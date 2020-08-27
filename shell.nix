let
  pkgs = import <nixpkgs> {};

  stdenv = pkgs.stdenv;

  dependencies = with pkgs; [
    R
    pandoc
    # (texlive.combine { inherit (texlive) scheme-small hyperref; })
  ];

  r-packages = with pkgs.rPackages; [
      rmarkdown
      ks
      igraph
      tidyverse
  ];

in with pkgs; {
  myProject = stdenv.mkDerivation {
    name = "abc-report";

    buildInputs = dependencies ++ r-packages;

  };
}
