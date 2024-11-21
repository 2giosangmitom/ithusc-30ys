{
  description = "Landing page for 30th anniversary celebration of the IT department at Hue University of Science";

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
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            bashInteractive
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
