{
  # Register host under the dotnix namespace.
  dotnix.luffy = { nixos, ... }: {
    members = [ "denis" ];
    modules = with nixos; [
      core
      system
      desktop
      development
      dell-precision-5570
    ];
  };
}
