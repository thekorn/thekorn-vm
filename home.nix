{ config, pkgs, ... }:

{
   home.username = "thekorn";
   home.homeDirectory = "/home/thekorn";
   programs.git.enable = true;
   home.stateVersion = "25.05";
   programs.bash = {
      enable = true;
      shellAliases = {
         btw = "echo btw";
      };
      profileExtra = ''
        if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
          exec uwsm start -S hyprland-uwsm.desktop
        fi
      '';
  };
  home.file.".config/hypr".source = ./config/hypr;
  home.file.".config/waybar".source = ./config/waybar;
  home.file.".config/foot".source = ./config/foot;
  #home.file.".config/nvim".source = ./config/nvim;
}
