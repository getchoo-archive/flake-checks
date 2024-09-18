> [!WARNING]
> This project has been archived! [treefmt-nix](https://github.com/numtide/treefmt-nix ) is the recommended alternative
>
> Thanks to all those who helped :)

# flake-checks

Simple, lightweight, and reusable Nix `flake check`s

## Getting started

```sh
nix flake init --template github:getchoo/flake-checks # create a new flake with our template
nix flake check --print-build-logs # and off to the races!
```

## Usage

### `mkChecks :: { pkgs, root }`

Returns an attribute set of our [supported checks](./checks)

## Related projects

- [git-hooks.nix](https://github.com/cachix/git-hooks.nix) (previously `pre-commit-hooks.nix`)
