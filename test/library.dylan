Module: dylan-user

define library pacman-catalog-test
  use common-dylan;
  use pacman;
  use testworks;
end;

define module pacman-catalog-test
  use common-dylan;
  use pacman, prefix: "pm/";
  use testworks;
end;
