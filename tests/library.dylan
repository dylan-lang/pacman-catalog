Module: dylan-user

define library pacman-catalog-test-suite
  use common-dylan;
  use deft,
    import: { pacman };
  use system;
  use testworks;
end;

define module pacman-catalog-test-suite
  use common-dylan;
  use locators;
  use pacman,
    import: { catalog, load-all-catalog-packages, validate-catalog };
  use testworks;
end;
