{
  pkgs ? import <nixpkgs> { },
}:
let
in
pkgs.mkShell {
  buildInputs = [
    pkgs.platformio
    pkgs.python3
  ];
}
