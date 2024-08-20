import cluster from "cluster";
import { Environment } from "./config/Environment";
import { ServeApi } from "./ServeApi";
import { Logger } from "./utils/Logger";

if (cluster.isPrimary) {
  // Setup primary cluster
  Logger.info(`Starting master process: ${process.pid}`);
  try {
    Environment.load(false);
  } catch (err: any) {
    Logger.error(err.message);
    process.exit(1);
  }

  const numCPUs = Environment.WORKERS_COUNT;

  Logger.info(`Master process ${process.pid} is running`);
  Logger.info(`Forking for ${numCPUs} CPUs`);

  for (let c = 0; c < numCPUs; c++) {
    // Fork instances
    cluster.fork();
  }

  process.on("SIGINT", shutdownCluster);
  process.on("SIGTERM", shutdownCluster);
  process.on("uncaughtException", (err) => {
    Logger.error(`Uncaught Exception: ${err}`);
    shutdownCluster();
  });
} else {
  // Not main cluster - do work
  const api = new ServeApi();

  if (!api.server) {
    Logger.error(`API server error: ${api.server}`);
    gracefulShutdown(api.server);
  } else {
    Logger.info(`Worker ${process.pid} started`, true);
  }

  process.on("message", (msg) => {
    if (msg === "shutdown") {
      gracefulShutdown(api.server);
    }
  });
}

// Function to gracefully shut down all workers
function shutdownCluster() {
  Logger.warn("Shutting down all workers...");

  // Send a message to all workers to shut down
  for (const id in cluster.workers) {
    cluster.workers[id]?.send("shutdown");
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

  // Force exit if not all workers shut down in a timely manner
  setTimeout(() => {
    Logger.error("Forcing cluster shutdown");
    process.exit(1);
  }, 15000);
}

function gracefulShutdown(server: any) {
  server?.close(() => {
    process.exit(0);
  });

  setTimeout(() => {
    process.exit(1);
  }, 5000);
}
