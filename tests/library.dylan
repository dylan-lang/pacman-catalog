Module: dylan-user

define library pacman-catalog-test-suite
  use common-dylan;
  use pacman;
  use testworks;
end;

define module pacman-catalog-test-suite
  use common-dylan;
  use pacman, prefix: "pm/";
  use testworks;
end;
