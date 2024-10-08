import { defineConfig } from "tsup";

export default defineConfig({
  entry: ["src/index.ts", "src/database/DataSource.ts"],
  outDir: "dist",
  clean: true,
  ignore: ["**/*.md"], // Ignore all .md files during the build
});
