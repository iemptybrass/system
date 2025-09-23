{

  boot = {

    kernelModules = [ 
      "zfs" 
    ];

    supportedFilesystems = [
      "zfs"
    ];

    zfs = {
      devNodes = "/dev/disk/by-uuid";
      forceImportRoot = true;
    };

    loader = {

      systemd-boot = {
        enable = false;
      };

      efi = {
        efiSysMountPoint = "/boot";
        canTouchEfiVariables = true;
      };

      grub = {
        enable = true;
        efiSupport = true;
        gfxmodeEfi = "auto";
        gfxmodeBios = "auto";
        useOSProber = false;
        zfsSupport = true;
        
        devices = [
          "nodev"
        ];
        
      };

    };
    
  };
  
}
