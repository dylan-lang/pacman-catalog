# pacman-catalog

This repository is a set of package definitions for the Dylan programming
language. This data is used by the
[dylan](https://github.com/dylan-lang/dylan-tool) command-line tool to install
Dylan packages and their dependencies.

If you would like to add a new library to the catalog, or publish a new release
of an existing package, see the [dylan
publish](https://opendylan.org/package/dylan-tool/index.html#dylan-publish)
command.

**Note:** this package management system is new for Dylan, and many packages are still
bundled into the [opendylan](https://github.com/dylan-lang/opendylan) repository.  If
your library depends on one of those bundled packages it's important to note that
although it doesn't need to be (and can't be) listed as an explicit dependency, it may
break in the future as packages are moved out of
[opendylan](https://github.com/dylan-lang/opendylan). One way to handle this is to list
`"opendylan"` as a dependency, and then change to the more specific package when it is
separated from Open Dylan.
