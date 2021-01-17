# pacman-catalog

This repository is a set of package definitions for the Dylan
programming language. This data is used by the
[pacman](https://github.com/cgay/pacman) library to install Dylan
packages and their dependencies.

If you would like to add a new library to the catalog just send a pull
request. In order to test your change, set the `DYLAN_CATALOG` shell
variable to the pathname of your local catalog and the build and run
the `pacman-catalog-test` library.

**Note:** this package management system is new for Dylan (as of Nov
2018), and many packages are still bundled into the
[opendylan](https://github.com/dylan-lang/opendylan) repository.  If
your library depends on one of those bundled packages it's important
to note that although it doesn't need to be (and can't be) listed as
an explicit dependency, it may break in the future as packages are
moved out of [opendylan](https://github.com/dylan-lang/opendylan). One
way to handle this is to list `"opendylan 2014.1.0"` or `"opendylan
head"` as a dependency, and then change to the more specific package
when it is separated from Open Dylan.
