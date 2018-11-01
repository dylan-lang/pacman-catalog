Module: pacman-catalog-test

// For now just make sure the catalog loads...

define test load-catalog-test ()
  assert-no-errors(pm/load-catalog());
end;

define suite pacman-catalog-suite ()
  test load-catalog-test;
end;

begin
  run-test-application(pacman-catalog-suite);
end;
