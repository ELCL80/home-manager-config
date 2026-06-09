{ pkgs, inputs, ... }: {
    imports = [
        ./languages.nix
        ./vscode.nix
    ];
    home = {
        packages = with pkgs; [
            wezterm
#            neovim
            git
        ];

#        file.".config/nvim" = {
#            source = inputs.nvim-config;
#            recursive = true;
#        };
        file.".config/wezterm" = {
            source = "${inputs.dotfiles}/wezterm";
            recursive = true;
        };
    };
}
