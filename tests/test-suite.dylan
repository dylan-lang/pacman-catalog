Module: pacman-catalog-test-suite


define test test-validate-catalog ()
  let app-file = as(<file-locator>, application-filename());
  let cat-dir = app-file.locator-directory.locator-directory.locator-directory;
  assert-no-errors(validate-catalog(catalog(directory: cat-dir)));
  let packages = load-all-catalog-packages(catalog());
  test-output("loaded %d packages from catalog\n", packages.size);
  assert-true(packages.size > 0);
end;

run-test-application();
