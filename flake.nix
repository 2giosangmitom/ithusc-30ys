{
  description = "Celebrating 30 years of IT HUSC";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    { nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShellNoCC {
          buildInputs =
            with pkgs;
            [
              nodejs_22
              pnpm
              just
            ];
          shellHook = ''
            export SHELL="${pkgs.bashInteractive}/bin/bash"
          '';
        };
        formatter = pkgs.nixfmt-rfc-style;
      }
    );
}
