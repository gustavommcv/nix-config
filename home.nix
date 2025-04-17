{ config, pkgs, ... }:

{
  home.username = "gustavo";
  home.homeDirectory = "/home/gustavo";
 
  nixpkgs.config.allowUnfree = true; 

  home.packages = with pkgs; [
    vscode
    spotify
    telegram-desktop
    evolution
    discord
  ];

  programs.git = {
    enable = true;
    userEmail = "monnerat.gustavo@outlook.com";
    userName = "Gustavo Monnerat";
    extraConfig = {
      init = {
        defaultBranch = "main";
      };
    };
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "z" ];
    };
  };

  programs.kitty = {
    enable = true;
    
    settings = {
      font_family = "JetBrains Mono Nerd Font";
      background_opacity = "0.5";
    };
  };

  home.stateVersion = "24.11";
}
