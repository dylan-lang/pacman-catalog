Module: dylan-user

define library pacman-catalog-test-suite
  use common-dylan;
  use dylan-tool-commands,
    import: { pacman };
  use testworks;
end;

define module pacman-catalog-test-suite
  use common-dylan;
  use pacman,
    import: { catalog, load-all-catalog-packages, validate-catalog };
  use testworks;
end;
