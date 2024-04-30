{
  mkChecks = {
    pkgs,
    root,
  }:
    pkgs.lib.packagesFromDirectoryRecursive {
      callPackage = path: attrs: pkgs.callPackage path ({inherit root;} // attrs);
      directory = ./checks;
    };
}
