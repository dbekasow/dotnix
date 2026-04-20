{
  flake.modules.nixos.minimal-iso = { modulesPath, ... }: {
    imports = [ "${modulesPath}/installer/cd-dvd/installation-cd-minimal.nix" ];
  };
}
