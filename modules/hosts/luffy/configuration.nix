{
  # Register host under the dotnix namespace.
  dotnix.luffy = { nixos, ... }: {
    members = [ "denis" ];
    modules = with nixos; [
      dell-precision-5570
      core
      system
      # desktop
      development
    ];
  };
}
