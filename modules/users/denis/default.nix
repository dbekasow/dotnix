{ self, ... }:
let hm = self.modules.homeManager; in {
  flake.modules = let user = "denis"; in {
    nixos."${user}" = {
      users.users."${user}" = {
        extraGroups = [ "wheel" "networkmanager" ];
      };

      home-manager.users."${user}".imports = [
        hm."${user}"
      ];
    };

    homeManager."${user}" = {
      imports = with hm; [ desktop development terminal ai ];
    };

    generic."${user}".profile = {
      fullname = "Denis Bekasow";
      email = "denis.bekasow@gmail.com";
    };
  };
}
