EXPORT_ALL_VARIABLES:

deps:
	$(MAKE) -C docs-src deps

release:
	$(MAKE) -C docs-src release

build:
	$(MAKE) -C docs-src build

serve:
	$(MAKE) -C docs-src serve

.PHONY: deps release build serve
