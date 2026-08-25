{ pkgs, ... }:
{
  programs.plasma = {
    enable = true;
    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
    };
    hotkeys.commands."launch-kitty" = {
      name = "Launch Kitty Terminal Emulator";
      key = "Meta+Enter";
      command = "kitty";
    };
  };
}
