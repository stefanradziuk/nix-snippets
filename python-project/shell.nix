{ pkgs }:

let
  python3 = pkgs.python3.withPackages (python-packages:
  with python-packages; [
    ipython
    matplotlib
    numpy
    scikit-learn
  ]);
in python3.env
