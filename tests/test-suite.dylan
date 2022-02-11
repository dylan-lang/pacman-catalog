Module: pacman-catalog-test-suite

define test test-validate-catalog ()
  assert-no-errors(validate-catalog(catalog()));
  let packages = load-all-packages(catalog());
  test-output("loaded %d packages from catalog\n", packages.size);
  assert-true(packages.size > 0);
end;

run-test-application();
