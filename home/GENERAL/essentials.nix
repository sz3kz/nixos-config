{ pkgs, ... }:

{
  home.packages = [
    pkgs.zip
    pkgs.unzip
    pkgs.file
    pkgs.ffmpeg
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.git = {
    enable = true;
    settings = {
      user.name = "sz3kz";
      user.email = "139809645+sz3kz@users.noreply.github.com";
      core = {
        editor = "nvim";
      };
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };

  programs.codex = {
    enable = true;
    settings = {

      # Main Provider Config
      model_providers.clarin_code = {
        name = "CLARIN Code";
        base_url = "https://services.clarin-pl.eu/api/v1/oapi/clarin_code";
        env_key = "CLARIN_API_KEY";
        wire_api = "responses";
      };

      # System Prompt + Output Parameters
      model_catalog_json = "$HOME/.codex/models.cc.json";

      # Default Profile (when none are specified)
      profile = "clippy";

      # Safe Model
      profiles.clippy = {
        model = "deepseek-v4-flash-0731";
        model_provider = "clarin_code";
        sandbox_mode = "read-only";
      };

      # Useful Model
      profiles.hal9000 = {
        model = "deepseek-v4-flash-0731";
        model_provider = "clarin_code";
        model_reasoning_effort = "high";
        approval_policy = "on-request";
        sandbox_mode = "danger-full-access";
        approvals_reviewer = "auto_review";
        plan_mode_reasoning_effort = "high";
      };
    };
  };
}
