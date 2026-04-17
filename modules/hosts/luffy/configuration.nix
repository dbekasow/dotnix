{
  # Register host under the dotnix namespace.
  dotnix.luffy = { nixos, ... }: {
    modules = with nixos; [
      dell-precision-5570
      system # boot, disko, network, etc.
      development
    ];
    members = [ "denis" ];
  };
}
