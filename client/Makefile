# Check if the environment variable "DONT_USE_PURO" is set to true
ifeq ($(DONT_USE_PURO),true)
PURO_CMD =
else
PURO_CMD = puro
endif

pre_build: pre_run gen_packages_files gen_indexes gen_api format 

pre_run: gen_workers gen_files gen_locale 

gen_locale:
	$(PURO_CMD) dart run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/localization/

gen_files:
	$(PURO_CMD) dart run build_runner build -d

gen_packages_files:
	(cd packages/siq_file/ && make gen_files)

gen_indexes:
	$(PURO_CMD) flutter pub global run index_generator

format:
	$(PURO_CMD) dart format lib

fix:
	$(PURO_CMD) dart fix --apply

gen_api:
	(cd ../openapi/dart_sdk/ && make build)

# List of files (without the '.g.dart' suffix)
FILES := upload_isolate.web

# Directories for source and output
SRC_DIR := ./lib/workers
OUT_DIR := ./web/workers

# Generate output file names based on the source file name
JS_FILES := $(FILES:%=$(OUT_DIR)/%.g.dart.js)
WASM_FILES := $(FILES:%=$(OUT_DIR)/%.g.dart.wasm)

# Rule to compile Dart to JS
$(OUT_DIR)/%.g.dart.js: $(SRC_DIR)/%.g.dart
	@echo "Compiling $< to JavaScript..."
	$(PURO_CMD) dart compile js -O2 "$<" -o "$@"

# Rule to compile Dart to WASM
$(OUT_DIR)/%.g.dart.wasm: $(SRC_DIR)/%.g.dart
	@echo "Compiling $< to WebAssembly..."
	$(PURO_CMD) dart compile wasm "$<" -o "$@"

gen_workers:  $(JS_FILES) $(WASM_FILES)