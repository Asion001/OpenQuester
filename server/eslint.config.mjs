import pluginJs from "@eslint/js";
import nodePlugin from "eslint-plugin-node";
import promisePlugin from "eslint-plugin-promise";
import globals from "globals";
import tseslint from "typescript-eslint";

export default [
  { files: ["**/*.{js,mjs,cjs,ts}"] },
  {
    languageOptions: {
      globals: globals.browser,
    },
  },
  pluginJs.configs.recommended,
  ...tseslint.configs.recommended,
  {
    files: ["**/*.ts"],
    languageOptions: {
      parser: tseslint.parser,
      parserOptions: {
        project: "./tsconfig.json",
        tsconfigRootDir: new URL(".", import.meta.url).pathname,
      },
    },
    rules: {
      "@typescript-eslint/no-floating-promises": [
        "error",
        { ignoreVoid: true },
      ],
    },
  },
  {
    plugins: {
      node: nodePlugin,
      promise: promisePlugin,
    },
    rules: {
      "node/no-sync": "error",
      "promise/no-callback-in-promise": "warn",
      "no-implicit-globals": "error",
      "@typescript-eslint/no-unused-vars": [
        "error",
        {
          vars: "all",
          args: "after-used",
          argsIgnorePattern: "^_",
          varsIgnorePattern: "^_",
        },
      ],
    },
  },
  {
    rules: {
      "@typescript-eslint/no-explicit-any": "off",
      "@typescript-eslint/ban-ts-comment": "off",
    },
  },
  {
    ignores: [
      "**/dist",
      "**/build",
      "**/node_modules",
      "**/test",
      "**/.history",
    ],
  },
];
