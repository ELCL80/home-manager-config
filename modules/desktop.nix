{ pkgs, ... }: {

    imports = [
        ./mango.nix
	./nvf.nix
    ];
    home.packages = with pkgs; [
        inkscape
        gimp
        obsidian
    ];
    programs.librewolf.enable = true;
}
