{
  config,
  ...
}:
{
  sops = {
    age.keyFile = "/home/yash2k4/.config/sops/age/keys.txt";

    defaultSopsFile = ../../secrets/secrets.yaml;

    secrets."ssh_keys/satella/yash2k4" = {
      path = "${config.home.homeDirectory}/.ssh/id_ed25519";
    };
  };
}
