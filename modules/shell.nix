{ config, lib, pkgs, inputs, ... }: {
    home = {
        packages = with pkgs; [
            zsh-powerlevel10k
            nerd-fonts.meslo-lg
            nerd-fonts.jetbrains-mono
            btop
            fzf
        ];

        file.".p10k.zsh".source = "${inputs.dotfiles}/.p10k.zsh";
        sessionPath = [
            "$HOME/.local/bin"
        ];
    };
    programs = {
        zsh = {
            enable = true;
            initContent = "source ~/.p10k.zsh";
            shellAliases = {
                cd = "z";
                rebuild = "home-manager switch";
                virt-manager = "/usr/bin/python /usr/bin/virt-manager";
                nvim-update = "nix flake update --flake ~/.config/home-manager/ nvim-config && home-manager switch";
            };
            plugins = [
                {
                    name = "powerlevel10k-config";
                    src = pkgs.zsh-powerlevel10k;
                    file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
                }
            ];
            oh-my-zsh = {
                enable = true;
            };
        };
        zoxide.enable = true;
    };
}

