import { defineConfig } from "tsup";

export default defineConfig({
  entry: {
    index: "src/presentation/index.ts",
    DataSource: "src/infrastructure/database/DataSource.ts",
  },
  outDir: "dist",
  clean: true,
  ignore: [
    "**/*.md",
    "**/*.log",
    "node_modules/**/*",
    "minio/**/*",
    "test/**/*",
    ".history/**/*",
  ],
  minify: false,
  sourcemap: true,
  target: "node18",
  platform: "node",
});
