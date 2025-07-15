{ inputs, pkgs, ... }:

{
  # nixpkgs.overlays = import ../../lib/overlays.nix ++ [
    # (import ./vim.nix { inherit inputs; })
  # ];

  homebrew = {
    enable = true;
    casks  = [
      "google-chrome"
      "iterm2"
      "alacritty"
      "font-fira-code"
      "slack"
      "spotify"
    ];

    brews = [
      "gnupg"
    ];
  };

  # The user should already exist, but we need to set this up so Nix knows
  # what our home directory is (https://github.com/LnL7/nix-darwin/issues/423).
  users.users.dnarayan = {
    home = "/Users/dnarayan";
    shell = pkgs.zsh;
  };

  # Required for some settings like homebrew to know what user to apply to.
  system.primaryUser = "dnarayan";
}