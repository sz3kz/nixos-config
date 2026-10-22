# This is for the user's fish configuration

{
  programs.fish = {
    enable = true;
    shellAliases = {
      cd = "echo \"fish: Unbased command: cd\" && false #"; # use zoxide in favor of cd builtin
      cat = "echo \"fish: Unbased command: cat\" && false #"; # use bat in favor of cat command
      less = "echo \"fish: Unbased command: less\" && false #"; # use bat in favor of ping command
      batp = "bat --paging=always";
      ls = "echo \"fish: Unbased command: ls\" && false #"; # use eza in favor of ls command
      ezai = "eza --icons";
      ezait = "eza --icons --tree";
      grep = "echo \"fish: Unbased command: grep\" && false #"; # use ripgrep in favor of grep command
      top = "echo \"fish: Unbased command: top\" && false #"; # use htop in favor of top command
      find = "echo \"fish: Unbased command: find\" && false #"; # use fd in favor of find command
      ping = "echo \"fish: Unbased command: ping\" && false #"; # use gping in favor of ping command

      exit = "echo \"fish: Just use Ctrl+D bro... \" && false #"; # disable exit command
      clear = "echo \"fish: Just use Ctrl+L bro... \" && false #"; # disable clear command
    };

    interactiveShellInit = ''
      zoxide init fish | source
      direnv hook fish | source

      set fish_greeting
      echo "Want a good shell? Go fish!"
    '';
  };
}
