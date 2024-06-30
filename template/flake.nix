{
  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-checks.url = "github:getchoo/flake-checks";
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      flake-checks,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        flake-checks' = flake-checks.lib.mkChecks {
          inherit pkgs;
          root = ./.;
        };
      in
      {
        checks = {
          check-actionlint = flake-checks'.actionlint;
          check-deadnix = flake-checks'.deadnix;
          check-nixfmt = flake-checks'.nixfmt;
        };
      }
    );
}
