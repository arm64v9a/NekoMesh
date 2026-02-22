{
  description = "flake for nekomesh";

  inputs.nixpkgs.url = "github:nixos/nixpkgs?depth=1";

  outputs =
    { self, ... }@inputs:
    let
      supportedSystems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin" # idk about darwin, aarch64 not tested
        "aarch64-darwin"
      ];
      forEachSupportedSystem =
        f:
        inputs.nixpkgs.lib.genAttrs supportedSystems (
          system:
          f {
            pkgs = import inputs.nixpkgs { inherit system; };
          }
        );
    in
    {
      devShells = forEachSupportedSystem (
        { pkgs }:
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              clang-tools
              platformio
              esptool
              tio
            ];
            shellHook = ''
              export PLATFORMIO_CORE_DIR=$PWD/.platformio
            '';
          };
        }
      );
    };
}
