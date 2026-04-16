{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs";
  outputs = { ... }@inputs: let
    forAllSystems = inputs.nixpkgs.lib.genAttrs inputs.nixpkgs.lib.systems.flakeExposed;
  in {
    packages = forAllSystems (system: let
      pkgs = import inputs.nixpkgs { inherit system; };
    in rec {
      zciil = pkgs.callPackage ./nix/package.nix {};
      default = zciil; 
    });
    devShells = forAllSystems (system: let
      pkgs = import inputs.nixpkgs { inherit system; };
    in rec {
      zciil = pkgs.callPackage ./nix/devShell.nix {};
      default = zciil;
    });
  };
}
