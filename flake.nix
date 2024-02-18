{
  description = "selamat datang di nix";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    u.url = "github:numtide/flake-utils";
  };
  outputs = inputs: inputs.u.lib.eachDefaultSystem (system:
    let
      pkgs = inputs.nixpkgs.legacyPackages.${system};
    in
    {
      devShells = {
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

        go = pkgs.mkShell {
          buildInputs = [ pkgs.go ];
        };
      };
    }
  );
}
