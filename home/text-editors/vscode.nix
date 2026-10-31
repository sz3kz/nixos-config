{pkgs, ...}:

{
  programs.vscode = {
    enable = true;
    profiles.python = {
      enableUpdateCheck = false;
      extensions = (with pkgs.vscode-extensions; [
        ms-python.python				# General Python Things
        vscodevim.vim					# Vim keybinds
        usernamehw.errorlens				# Nice error output
        ms-toolsai.jupyter				# Depency of "Colab"
        detachhead.basedpyright				# LSP
        charliermarsh.ruff				# Linting & Formatting
        eamodio.gitlens					# More Robust Git Integration???

     ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [	# "Colab
      {
        name = "colab";
        publisher = "google";
        version = "0.8.1";
        sha256 = "sha256-QKGE6heSrSCm7X0YSOQy6SQeD50AZPS28UYWSWYdJxs="; # Run switch to get real hash
      }
     ];
      userSettings = {
        "update.mode" = "none";
        "github.copilot.nextEditSuggestions.enabled" = true;
        "telemetry.telemetryLevel" = "off"; # does this even work?
        "notebook.lineNumbers" = "on";
        "notebook.insertFinalNewline" = true;
        "python.languageServer" = "None";
	"[python]" = {
	    "editor.formatOnSave" = true;
	    "editor.codeActionsOnSave" = {
	      "source.fixAll" = "explicit";
	      "source.organizeImports" = "explicit";
	    };
	    "editor.defaultFormatter" = "charliermarsh.ruff";
	};
	"notebook.formatOnSave.enabled" = true;
	"notebook.codeActionsOnSave" = {
	  "notebook.source.fixAll" = "explicit";
	  "notebook.source.organizeImports" = "explicit";
	};

	"[markdown]" = {
	  "editor.formatOnSave" = true;
	  "editor.defaultFormatter" = "charliermarsh.ruff";
	};
      };
    };
  };
}
