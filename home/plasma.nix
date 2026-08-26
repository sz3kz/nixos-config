{ pkgs, ... }:
{
  programs.plasma = {
    enable = true;
    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
      wallpaper = "/etc/nixos/wallpapers/gruv-material.png";
    };
    shortcuts = {
      kwin = {
        "Activate Window Demanding Attention"="";
      };
    };
    hotkeys.commands."launch-app-launcher" = {
      name = "Launch App Launcher";
      key = "Meta+Space";
      command = "fuzzel";
    };
    hotkeys.commands."launch-terminal" = {
      name = "Launch Terminal Emulator";
      key = "Meta+Ctrl+T";
      command = "kitty";
    };
    hotkeys.commands."launch-internet-browser" = {
      name = "Launch Internet Browser";
      key = "Meta+Ctrl+I";
      command = "firefox";
    };
    hotkeys.commands."launch-bluetooth" = {
      name = "Launch Bluetooth";
      key = "Meta+Ctrl+B";
      command = "bzmenu --launcher fuzzel";
    };
    hotkeys.commands."launch-connectivity-settings" = {
      name = "Launch Wireless Connectivity Settings";
      key = "Meta+Ctrl+W";
      command = "iwmenu --launcher fuzzel";
    };
    hotkeys.commands."launch-sound-settings" = {
      name = "Launch Audio Settings";
      key = "Meta+Ctrl+A";
      command = "pwmenu --launcher fuzzel";
    };
    # "Close Window" = "Alt+F4"
    # "Lock Session" = "Meta+L"
  };
}
