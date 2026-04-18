# This is for the user's fish configuration

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      zoxide init fish | source

      set fish_greeting
      echo "You want a good shell? Go fish!"
    '';
  };
}
