import express from "express";
import cluster from "cluster";
import { type Server } from "http";
import { Environment } from "./config/Environment";
import { ServeApi } from "./ServeApi";
import { Logger } from "./utils/Logger";
import { WorkerMessage } from "./enums/WorkerMessage";
import { Database } from "./database/Database";
import { AppDataSource } from "./database/DataSource";
import { ApiContext } from "./services/context/ApiContext";
import { StorageServiceFactory } from "./services/storage/StorageServiceFactory";

const main = async () => {
  Logger.info(`Initializing API Context`);

  // Initialize api context
  const context = new ApiContext({
    db: Database.getInstance(AppDataSource),
    app: express(),
    env: Environment.instance,
    fileContext: StorageServiceFactory.createFileContext("s3"),
  });

  if (cluster.isPrimary) {
    // Setup primary cluster
    Logger.info(`Starting master process: ${process.pid}`);

    context.env.load(false);

    const workersCount = context.env.WORKERS_COUNT;

    Logger.info(`Master process ${process.pid} is running`);
    Logger.info(`Forking for ${workersCount} workers`);

    for (let c = 0; c < workersCount; c++) {
      // Fork instances
      cluster.fork();
    }

    ["SIGINT", "SIGTERM", "uncaughtException"].forEach((signal) => {
      process.on(signal, shutdownCluster);
    });
  } else {
    // Not main cluster - do work
    let api: ServeApi | undefined;
    try {
      // All worker should serve api with same context
      api = new ServeApi(context);
      if (api) {
        await api.init();
      }

      if (!api || !api.server) {
        Logger.error(`API server error: ${api?.server}`);
        gracefulShutdown(api?.server);
      } else {
        Logger.info(`Worker ${cluster.worker?.process.pid} started`, true);
      }
    } catch (err: any) {
      Logger.error(`Worker caught an exception: ${err.message}`);
      gracefulShutdown(api?.server);
    }

    process.on("message", (msg: WorkerMessage) => {
      switch (msg) {
        case WorkerMessage.SHUTDOWN:
          gracefulShutdown(api?.server);
      }
    });
  }
};

// Gracefully shut down all workers
function shutdownCluster() {
  Logger.warn("Shutting down all workers...");

  // Send a message to all workers to shut down
  for (const id in cluster.workers) {
    cluster.workers[id]?.send(WorkerMessage.SHUTDOWN);
  }

  // Wait for workers to exit
  cluster.on("exit", (worker) => {
    Logger.info(`Worker ${worker.process.pid} exited`, true);
    if (Object.keys(cluster.workers ?? {}).length === 0) {
      Logger.info(
        "All workers have exited. Shutting down master process.",
        true
      );
      process.exit(0);
    }
  });

  setTimeout(() => {
    Logger.error("Forcing cluster shutdown");
    process.exit(1);
  }, 10000);
}

function gracefulShutdown(server: Server | undefined) {
  setTimeout(() => {
    process.exit(1);
  }, 5000);
  server?.close();
  Logger.warn("Worker server closed", true);
  process.exit(0);
}

try {
  main();
} catch (err: any) {
  Logger.error(`Top-level App Error: ${err.message}`);
  shutdownCluster();
  process?.exit(1);
}
