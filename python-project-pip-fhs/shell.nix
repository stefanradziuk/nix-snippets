{ pkgs ? import <nixpkgs> {} }:
(pkgs.buildFHSUserEnv {
  name = "python-project-pip-fhs";
  targetPkgs = pkgs: (with pkgs; [
    python3
    python3Packages.pip
    python3Packages.virtualenv

    # some project specific libs
    blas
    expat
    lapack
  ]);
  runScript = "zsh";
}).env
