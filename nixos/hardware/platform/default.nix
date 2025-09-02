{
  config,
  platform,
  ...
}: {

  hardware.cpu."${platform}".updateMicrocode = config.hardware.enableRedistributableFirmware;

}
