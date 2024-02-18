{
  description = "selamat datang di nix";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  outputs = inputs: {
    devShells.aarch64-darwin.default = inputs.nixpkgs.legacyPackages.aarch64-darwin.mkShell {
      buildInputs = [ inputs.nixpkgs.legacyPackages.aarch64-darwin.python3 ];
    };
  };
}
