# pacman-catalog

This repository is a set of package definitions for the Dylan programming language. This
data is used by the [pacman](https://github.com/dylan-lang/pacman) library to install
Dylan packages and their dependencies.

If you would like to add a new library to the catalog just send a pull request. In order
to test your change, set the `DYLAN_CATALOG` shell variable to the pathname of your local
catalog and then build and run the `pacman-catalog-test-suite` library to verify that the
catalog parses correctly.

```shell
$ DYLAN_CATALOG=pacman-catalog/tests/catalog.json _build/bin/pacman-catalog-test-suite
```

You're changes will not be "live" until a new release of this repository is created on
GitHub. A local copy of this repository is cached by `pacman` in
`${DYLAN}/pkg/pacman-catalog`. For a quicker update after a new release is published,
delete that directory.

**Note:** this package management system is new for Dylan, and many packages are still
bundled into the [opendylan](https://github.com/dylan-lang/opendylan) repository.  If
your library depends on one of those bundled packages it's important to note that
although it doesn't need to be (and can't be) listed as an explicit dependency, it may
break in the future as packages are moved out of
[opendylan](https://github.com/dylan-lang/opendylan). One way to handle this is to list
`"opendylan"` as a dependency, and then change to the more specific package when it is
separated from Open Dylan.
