import { defineConfig } from "tsup";

export default defineConfig({
  entry: ["src/index.ts"],
  outDir: "dist",
  clean: true,
  ignore: ["**/*.md", "**/*.log"],
  minify: true,
});
