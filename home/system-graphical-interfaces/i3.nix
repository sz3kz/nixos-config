{ pkgs, lib, config, ... }:

{
  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3;
    config = {
      modifier = "Mod4";
      gaps = {
        inner = 5;
        outer = 2;
      };
      keybindings = lib.mkOptionDefault {
  	"${config.xsession.windowManager.i3.config.modifier}+Return" = "exec kitty";
      };
    };
  };
}
