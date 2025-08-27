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
      hostname = "nixos";
      system = "x86_64-linux";
    in {
      nixosConfigurations = {
        "${hostname}" = nixpkgs.lib.nixosSystem { 
          system = "${system}"
          specialArgs = { inherit inputs; };
          modules = [];
        };
      };
    };

}
