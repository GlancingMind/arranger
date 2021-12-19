{
  description = "Flake for Arranger tool";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-21.11;
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
  flake-utils.lib.eachDefaultSystem (system: let
    pkgs = import nixpkgs {
      config = {
        allowUnfree = false; # set for to allow unfree packages
      };
      inherit system;
    };
  in {
    devShell = pkgs.mkShell {
      nativeBuildInputs = [

      ];
    };
  });
}
