{
  # Register host under the dotnix namespace.
  dotnix.roger = { nixos, ... }: {
    modules = with nixos; [ bootstrap minimal-iso ];
    iso.enable = true;
    iso.buildOutput = "isoImage";
  };
}
