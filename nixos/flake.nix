{

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
      self,
      nixpkgs,
      ...
  } @ inputs:
    let
      hostname = "X";
      system = "X";
      version = "XX.XX";
      identifier = "XXXXXXXX";
      platform = "X";
      storage = "XXX";
    in {
      nixosConfigurations = {
        "${hostname}" = nixpkgs.lib.nixosSystem {
          system = "${system}"

          specialArgs = {
            inherit
              inputs
              hostname
              system
              version
              identifier
              platform
              storage;
          };

          modules = [];
        };
      };
    };

}
