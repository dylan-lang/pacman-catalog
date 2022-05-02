Module: dylan-user

define library pacman-catalog-test-suite
  use common-dylan;
  use pacman;
  use testworks;
end;

define module pacman-catalog-test-suite
  use common-dylan;
  use pacman,
    import: { catalog, load-all-catalog-packages };
  use %pacman,
    import: { validate-catalog };
  use testworks;
end;
