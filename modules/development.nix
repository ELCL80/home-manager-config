{ pkgs, inputs, ... }: {
    imports = [
        ./languages.nix
        ./vscode.nix
    ];
    home = {
        packages = with pkgs; [
            wezterm
            git
            lazygit
        ];

        file.".config/wezterm" = {
            source = "${inputs.dotfiles}/wezterm";
            recursive = true;
        };
    };
}
