{ pkgs, lib, config, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3;
    config = {
      modifier = "Mod4";
      gaps = {
        inner = 10;
        outer = 5;
      };
      keybindings = lib.mkOptionDefault {
  	"${config.xsession.windowManager.i3.config.modifier}+Return" = "exec kitty";
      };
    };
  };
}
