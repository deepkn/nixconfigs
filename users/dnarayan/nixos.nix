{ pkgs, inputs, ... }:

{
  # Add ~/.local/bin to PATH
  environment.localBinInPath = true;

  # Since we're using zsh as our shell
  programs.zsh.enable = true;

  users.users.mitchellh = {
    isNormalUser = true;
    home = "/home/dnarayan";
    description = "Deepak Narayan";
    extraGroups = [ "docker" "lxd" "wheel" "networkmanager" ];
    shell = pkgs.zsh;
    hashedPassword = "$6$QNC4so0BTS/RD.vM$xdwzggUmL8X10ME4VeQafoIUNiSNrpaiO9G/CERqRyWeyskb4eFGtwHKWwE0IIcJ8HxX1Gmb2iqzCRVvixQdn.";
    # set openssh.authorizedKeys.keys later
  };

  # Add overlays to nixpkgs
  # nixpkgs.overlays = import ../../lib/overlays.nix ++ [
    # (import ./vim.nix { inherit inputs; })
  # ];
}