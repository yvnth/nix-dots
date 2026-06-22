{ ... }:
{
  imports = [ ../../modules/home ];

  home = {
    username = "yvnth";
    homeDirectory = "/home/yvnth";
    stateVersion = "26.05";
  };

  homeModules = {
    btop.enable = true;
    git.enable = true;
    helix.enable = true;
    java.enable = true;
    kitty.enable = true;
    lazydocker.enable = true;
    lazygit.enable = true;
    mango.enable = true;
    rofi.enable = true;
    shell.enable = true;
    starship.enable = true;
    swaylock.enable = true;
    swaync.enable = true;
    tmux.enable = true;
    waybar.enable = true;
    yazi.enable = true;
    zathura.enable = true;
  };
}
