{
  storage,
  ...
}: let
  type = {

    ssd = {
      services.fstrim.enable = true;
    };

    hdd = {
      services.hdapsd.enable = true;
    };

  }; 
in
  type."${storage}"
