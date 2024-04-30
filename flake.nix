{
  description = "Simple, lightweight, and reusable Nix `flake check`s";

  outputs = _: {
    lib = import ./.;
    templates.default = {
      path = toString ./template;
      description = "a starting place for flake-checks";
    };
  };
}
