{ lib, ... }: {
    programs.nvf = {
        enable = true;

        settings = {
            vim = {
                theme = {
                    enable = true;
                    name = "onedark";
                    style = "dark";
                    transparent = true;
                };

                options = {
                    tabstop = 4;
                    shiftwidth = 4;
                    expandtab = true;
                };

                lsp = {
                    enable = true;
                    nvim-docs-view.enable = true;
                    lspkind.enable = true;
                };

                languages = {
                    enableTreesitter = true;

                    nix = {
                        enable = true;
                        lsp.servers = [ "nixd" ];
                    };
                    clang.enable = true;
                    python.enable = true;
                    typescript.enable = true;
                };

                terminal.toggleterm = {
                    enable = true;
                    setupOpts.winbar.name_formatter = lib.generators.mkLuaInline '' function(term)  return (term.name):match(".*/(.*)"):match("(.-);") end '';
                    lazygit = {
                        enable = true;
                    };
                };

                telescope.enable = true;
                statusline.lualine.enable = true;
                autocomplete.blink-cmp.enable = true;

                dashboard.dashboard-nvim.enable = true;

                utility.images.img-clip.enable = true;
                autopairs.nvim-autopairs.enable = true;
            };
        };
    };
}
