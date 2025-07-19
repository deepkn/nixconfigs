{ config, ... }:
{
  programs.nushell = {
    enable = true;
    envFile.source = ../configs/nushell/env.nu;
    configFile.source = ../configs/nushell/config.nu;
    inherit (config.home) shellAliases; # Our shell aliases are pretty simple
  };
}
