{ nixpkgs ? import <nixpkgs> {}, compiler ? "default" }:
let pname = "monopoly";
in
if compiler == "default" then
  nixpkgs.haskellPackages.callCabal2nix pname ./. {}
else
  nixpkgs.haskell.packages.${compiler}.callCabal2nix pname ./. {}
