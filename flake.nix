{
  description = "selamat datang di nix";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  outputs = inputs:
    let
      pkgs = inputs.nixpkgs.legacyPackages.aarch64-darwin;
    in
    {
      devShells.aarch64-darwin = {

        default = pkgs.mkShell {
          buildInputs = [ ];
        };
        # nix develop .#python
        python = pkgs.mkShell {
          buildInputs = [ pkgs.python3 ];
        };
        # nix develop .#nodejs
        nodejs = pkgs.mkShell {
          buildInputs = [ pkgs.nodejs pkgs.nodePackages.yarn pkgs.nodePackages.pnpm ];
        };

      };
    };
}
