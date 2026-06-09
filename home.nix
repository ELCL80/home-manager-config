{ ... }: {

    home = {
        username = "kyle";
        homeDirectory = "/home/kyle";
        stateVersion = "25.11";
    };
    programs.home-manager.enable = true;

    imports = [
        ./modules/development.nix
        ./modules/shell.nix
        ./modules/desktop.nix
    ];
}
