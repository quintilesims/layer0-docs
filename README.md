# Layer0 Docs

This repository contains the source and built documentation for [Layer0](http://github.com/quintilesims/layer0).
The built documentation is served at [layer0.ims.io](http://layer0.ims.io), which displays the contents of the `docs/` directory in this repo's `master` branch.

There is a `make` target to use if you wish to serve the docs locally:
```bash
make serve
```


## Updating the docs

Changes should be made within the `docs-src/` directory.
In order for these changes to be servable, we build the source doc files into the `docs/` directory using [mkdocs](https://www.mkdocs.org/).

A shortcut exists in the Makefile:
```bash
make build
```

If you're missing a dependency, the Makefile can help with that, too:
```bash
make deps
```


## Updating for a new Layer0 release

There are a couple of points in the documentation that must be updated when a new Layer0 version is released.
To save some pain, there is some automation around this in the form of a Makefile.

1. Export the newly-released Layer0 semver tag as the `L0_VERSION` environment variable:
```bash
export L0_VERSION="v9.9.9"
```
(Substitute the actual semantic version, of course, not just "v9.9.9")

2. Run the `release` target:
```bash
make release
```

3. Make sure to add and commit the changes in both the `docs-src/` and `docs/` directories.
