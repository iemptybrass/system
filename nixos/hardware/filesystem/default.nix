{

  boot = {  
    kernelModules = ["zfs"];
    supportedFilesystems = ["zfs"];
    
    zfs = {
      devNodes = "/dev/disk/by-uuid";
      forceImportRoot = true;
    };
    
  };
  
  services.zfs = {
    autoSnapshot.enable = false;
    trim.enable = true;
  };

  fileSystems = {
  
    "/" = {
      device = "vault/root";
      fsType = "zfs";
      neededForBoot = true;
    };
    
    "/nix" = {
      device = "vault/nix";
      fsType = "zfs";
    };
    
    "/home" = {
      device = "vault/home";
      fsType = "zfs";
    };
    
  };
  
}
