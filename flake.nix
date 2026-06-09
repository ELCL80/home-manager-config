{
    description = "Home Manager configuration of kyle";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        mangowm = {
            url = "github:mangowm/mango";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        nvf = {
            url = "github:notashelf/nvf";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        # Other
        nvim-config = {
            url = "github:ELCL80/nvim-dotfiles";
            flake = false;
        };
        dotfiles = {
            url = "github:ELCL80/dotfiles";
            flake = false;
        };
        nixos-configurations = {
            url = "github:ELCL80/nixos-configurations";
            flake = false;
        };
    };

    outputs = inputs@{ nixpkgs, home-manager, ... }: 
    let
        system = "x86_64-linux";
        pkgs = import nixpkgs {
            inherit system;
            config.allowUnfree = true;
        };
    in {
        homeConfigurations.kyle = home-manager.lib.homeManagerConfiguration {
            inherit pkgs;
            extraSpecialArgs = { inherit inputs; };
            modules = [ 
                ./home.nix
                inputs.nvf.homeManagerModules.default 
                inputs.mangowm.hmModules.mango
            ];
        };
    };
}
