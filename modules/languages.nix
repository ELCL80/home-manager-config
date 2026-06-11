{ pkgs, ... }: {
    home.packages = with pkgs; [
        nixd
        nixfmt
        clang
        python3
        nodejs 
        ghc
        cabal-install
        cargo
    ];
}
