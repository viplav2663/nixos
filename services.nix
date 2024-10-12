{ config, pkgs, ... }:
{
	services.xserver = {
		xkb.layout = "us";
		xkb.variant = "";
		enable = true;
	};
	
	services.displayManager.sddm.enable = true;
	services.displayManager.sddm.theme = "sugar-candy";
	

	#virtualisation
	virtualisation.libvirtd.enable = true;

	programs.dconf.enable = true;
}

