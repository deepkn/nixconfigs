{ pkgs, lib, ... }:
{
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
  };

  services.ssh-agent = lib.mkIf pkgs.stdenv.isLinux { enable = true; };
}