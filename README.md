
# TPC-H dbgen

> Please see https://github.com/databricks/tpch-dbgen for the original README
>

This repository is forked from the Databricks tpch-dbgen repo, with actions setup to build and publish artifacts to Github Releases.

## Release Process

1. Create a new release through the Github UI, or the `gh` CLI
2. An Action will run to generate tarfiles, one for each supported platform (see below) containing applications.


## Using the release artifacts

Every release has a platform-specific artifact, named `dbgen-${PLATFORM}-${RELEASE}.tar`.

The tarball is uncompressed, and contains the following top-level entries:

* `dbgen`: The `dbgen` CLI tool
* `dists.dss`: The distribution config file from the repo

**Supported Platforms**

* macOS (Apple Silicon or Intel)
* Linux x86-64


