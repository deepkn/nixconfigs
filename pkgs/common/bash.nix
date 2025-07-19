{ config, ... }:
{
  programs.bash = {
    enable = true;
    inherit (config.home) shellAliases;
  };
}