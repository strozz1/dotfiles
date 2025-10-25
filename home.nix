{ config, pkgs, ... }:

{
  home.username = "oscar";
  home.homeDirectory = "/home/oscar";

  home.stateVersion = "25.05"; 
 
  home.packages = [
    pkgs.htop
    pkgs.git
    pkgs.hello
      ];

  
  home.file = {
     };

  #
    home.sessionVariables = {
     EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
  programs.git={
      enable=true;
      userName="Oscar Gonzalez Strozzi";
      userEmail="oscar.gonzalez.strozzi14@gmai.com";
  };
}
