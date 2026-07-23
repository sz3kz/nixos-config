{ pkgs, ... }:
{
  programs.plasma = {
    enable = true;
    hotkeys.commands."launch-kitty" = {
      name = "Launch Kitty Terminal Emulator";
      key = "Meta+Enter";
      command = "kitty";
    };
  };
}
