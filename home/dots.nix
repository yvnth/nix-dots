{ config, ... }:
let
  mkOutOfStoreSymlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configDir = "${config.home.homeDirectory}/nix-dots/dots";
in
{
  home.file = {
    ".bashrc".source = mkOutOfStoreSymlink "${configDir}/shell/.bashrc";
    ".config/btop".source = mkOutOfStoreSymlink "${configDir}/btop";
    ".config/helix".source = mkOutOfStoreSymlink "${configDir}/helix";
    ".config/kitty".source = mkOutOfStoreSymlink "${configDir}/kitty";
    ".config/lazydocker".source = mkOutOfStoreSymlink "${configDir}/lazydocker";
    ".config/lazygit".source = mkOutOfStoreSymlink "${configDir}/lazygit";
    ".config/noctalia".source = mkOutOfStoreSymlink "${configDir}/noctalia";
    ".config/rofi".source = mkOutOfStoreSymlink "${configDir}/rofi";
    ".config/scripts".source = mkOutOfStoreSymlink "${configDir}/scripts";
    ".config/shell".source = mkOutOfStoreSymlink "${configDir}/shell";
    ".config/starship".source = mkOutOfStoreSymlink "${configDir}/starship";
    ".config/sway".source = mkOutOfStoreSymlink "${configDir}/sway";
    ".config/tmux".source = mkOutOfStoreSymlink "${configDir}/tmux";
    ".config/yazi".source = mkOutOfStoreSymlink "${configDir}/yazi";
    ".config/zathura".source = mkOutOfStoreSymlink "${configDir}/zathura";
    ".zshrc".source = mkOutOfStoreSymlink "${configDir}/shell/.zshrc";
  };
}
