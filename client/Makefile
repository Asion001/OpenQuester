# Check if the environment variable "DONT_USE_PURO" is set to true
ifeq ($(DONT_USE_PURO),true)
PURO_CMD =
else
PURO_CMD = puro
endif

pre_build: gen_files format 

gen_locale:
	$(PURO_CMD) dart run easy_localization:generate -f keys -o locale_keys.g.dart -S assets/localization/

gen_files:
	$(PURO_CMD) dart run build_runner build -d

format:
	$(PURO_CMD) dart format lib

fix:
	$(PURO_CMD) dart fix --apply
