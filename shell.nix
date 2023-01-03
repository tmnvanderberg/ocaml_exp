{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.opam
    pkgs.gmp
  ];
  buildInputs = [
  ];
}
