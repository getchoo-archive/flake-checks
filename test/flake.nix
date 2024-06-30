{
  inputs = {
    nixpkgs.url = "nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        flake-checks' = (import ../.).mkChecks {
          inherit pkgs;
          root = ../.;
        };
      in
      {
        # we use nixfmt, so alejandra will always fail
        checks = builtins.removeAttrs flake-checks' [ "alejandra" ];
      }
    );
}
