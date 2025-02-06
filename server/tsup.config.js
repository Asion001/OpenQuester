import { defineConfig } from "tsup";

export default defineConfig({
  entry: ["src/index.ts", "src/database/DataSource.ts"],
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
