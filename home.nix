{ config, pkgs, ... }:

{
  home.username = "gustavo";
  home.homeDirectory = "/home/gustavo";
 
  nixpkgs.config.allowUnfree = true; 

  # Enable gtk
  gtk.enable = true;
  gtk.theme.package = pkgs.gnome-themes-extra;
  gtk.theme.name = "Adwaita-dark";
  gtk.iconTheme.package = pkgs.papirus-icon-theme;
  gtk.iconTheme.name = "Papirus";

  # Enable qt
  qt.enable = true;
  qt.platformTheme.name = "adwaita";
  qt.style.name = "adwaita-dark";
  qt.style.package = pkgs.adwaita-qt;

  home.packages = with pkgs; [
    vscode
    spotify
    telegram-desktop
    evolution

    libsForQt5.qt5ct
    papirus-icon-theme
    adwaita-qt
    adwaita-icon-theme
    gnome-themes-extra
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
