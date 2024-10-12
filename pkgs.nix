{ config, pkgs, ... }:
{ 
	#Unfree packages
	nixpkgs.config.allowUnfree = true;
	nixpkgs.config.allowUnfreePredicate = _: true;

	programs.fish.enable = true;
	users.defaultUserShell = pkgs.fish;

	environment.systemPackages = with pkgs; [
		home-manager
		kitty
		vim
		gcc
		glibc
		udev
		clang
		wget

		pcmanfm
		gvfs
		udiskie
		lxqt.lxqt-policykit

		gtk2
		gtk3
		gtk4

		libsForQt5.qt5.qtquickcontrols2
		libsForQt5.qt5.qtgraphicaleffects

		pavucontrol
		pamixer
		pipewire
		bluez
		bluez-tools
		blueman

		brightnessctl

		sddm
		sddm-kcm
		(callPackage ./sugar-candy.nix{}).sddm-sugar-candy-theme

		waybar
		wlroots
		xwayland
		xdg-utils
		xdg-desktop-portal-hyprland
		xorg.xauth
	];
}











