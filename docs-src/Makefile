EXPORT_ALL_VARIABLES:

SHELL=/bin/bash

check-environment:
	@if [[ ! $$L0_VERSION ]] ; then \
		echo "Layer0 version not set! [ export L0_VERSION=\"vX.Y.Z\" ]" ; \
		exit 1 ; \
	fi

deps:
	pip3 install mkdocs
	pip3 install -Iv mkdocs-material==3.0.6
	go get github.com/blang/expenv
	go install github.com/blang/expenv

release: template build

template: check-environment
	expenv -f templates/index.md.template > docs/index.md
	cat templates/release-table-header.template > docs/releases.md
	expenv -f templates/release-table-insertion.template > templates/tmp
	cat templates/release-table-body.template >> templates/tmp
	mv templates/tmp templates/release-table-body.template
	cat templates/release-table-body.template >> docs/releases.md

build:
	mkdocs build --clean

serve:
	mkdocs serve -a 0.0.0.0:9090

.PHONY: deps check-environment release template build serve
