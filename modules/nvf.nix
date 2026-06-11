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
                    undofile = true;
                };

                lsp = {
                    enable = true;
                    nvim-docs-view.enable = true;
                    lspkind.enable = true;
                    trouble.enable = true;
                };

                diagnostics.config.signs.text = lib.generators.mkLuaInline ''
                    {
                        [vim.diagnostic.severity.ERROR] = " ",
                        [vim.diagnostic.severity.WARN] = " ",
                        [vim.diagnostic.severity.HINT] = "󰠠 ",
                        [vim.diagnostic.severity.INFO] = " ",
                    }
                '';

                languages = {
                    enableTreesitter = true;

                    nix = {
                        enable = true;
                        lsp.servers = [ "nixd" ];
                    };
                    clang.enable = true;
                    python.enable = true;
                    typescript.enable = true;
                    haskell.enable = true;
                    rust.enable = true;
                };

                statusline.lualine = {
                    enable = true;
                    theme = "onedark";
                };

                terminal.toggleterm = {
                    enable = true;
                    setupOpts.winbar.name_formatter = lib.generators.mkLuaInline '' function(term)  return (term.name):match(".*/(.*)"):match("(.-);") end '';
                    lazygit = {
                        enable = true;
                    };
                };

                utility = {
                    images.img-clip.enable = true;
                    undotree.enable = true;
                };

                telescope.enable = true;
                autocomplete.blink-cmp.enable = true;
                autopairs.nvim-autopairs.enable = true;
            };
        };
    };
}
