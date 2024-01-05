{ pkgs }: {
    deps = [
      pkgs.haskellPackages.cabal-install
      pkgs.haskellPackages.stack
        pkgs.haskellPackages.ghc
        pkgs.haskell-language-server
    ];
}