# Check if the environment variable "DONT_USE_PURO" is set to true
ifeq ($(DONT_USE_PURO),true)
PURO_CMD =
else
PURO_CMD = puro
endif

build: gen_files
	$(PURO_CMD) dart run build_runner build -d

gen_files: 
	rm -rf lib/src
	$(PURO_CMD) dart run swagger_parser