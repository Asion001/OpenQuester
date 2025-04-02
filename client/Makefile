# Check if the environment variable "DONT_USE_PURO" is set to true
ifeq ($(DONT_USE_PURO),true)
PURO_CMD =
else
PURO_CMD = puro
endif

pre_build: pre_run pre_build_packages gen_indexes gen_api format 

pre_run: gen_files gen_workers gen_locale 


ifeq ($(DART_PACKAGE),true)
gen_locale:
	@echo "Skipping gen_locale"
pre_build_packages: 
	@echo "Skipping pre_build_packages"
gen_files_packages: 
	@echo "Skipping gen_files_packages"
else
gen_locale:
	$(PURO_CMD) dart run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/localization/

pre_build_packages:
	@for pkg in packages/* ; do \
		echo "Running pre_build in $$pkg" ; \
		$(MAKE) -C $$pkg -f ../../MakeFile pre_build DART_PACKAGE=true || true; \
	done

gen_files_packages:
	@for pkg in packages/* ; do \
		echo "Running gen_files in $$pkg" ; \
		$(MAKE) -C $$pkg -f ../../MakeFile gen_files DART_PACKAGE=true || true ; \
	done
endif

gen_files:
	$(PURO_CMD) dart run build_runner build -d

gen_indexes:
	$(PURO_CMD) flutter pub global run index_generator

format:
	$(PURO_CMD) dart format lib

fix:
	$(PURO_CMD) dart fix --apply

ifeq ($(DART_PACKAGE),true)
gen_api:
	@echo "Skipping gen_locale"
else
gen_api:
	$(MAKE) -C ../openapi/dart_sdk/ build
endif

ifeq ($(DART_PACKAGE),true)
gen_workers:
	@echo "Skipping gen_workers"
else
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
endif