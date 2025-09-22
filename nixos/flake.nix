{

  inputs = {
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
    };
    hardware = {
      url = "github:nix-community/nixos-facter-modules";
    };
  };

  outputs = {
      self,
      nixpkgs,
      hardware,
      ...
    } @ inputs:
    let
      hostname = "nixos";
      version = "XX.XX";
      identifier = "XXXXXXXX";
    in {

      nixosConfigurations = {
        "${hostname}" = nixpkgs.lib.nixosSystem {

          specialArgs = {
            inherit
              inputs
              hostname
              version
              identifier;
          };

          modules = [
            {
            
              imports = [ 
                ./modules
                hardware.nixosModules.facter
              ];
              
              config.facter.reportPath = ./facter.json; 
              
            }
          ];

        };
      };

    };

}
