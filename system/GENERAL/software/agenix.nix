{ inputs, declaredSettings, ... }:

{
  environment.systemPackages = [ inputs.agenix.packages.x86_64-linux.default ];

  age.identityPaths = [
    "/etc/ssh/root_agenix_key"
  ];

  age.secrets.model_catalog_json = {
    file = ../../../secrets/model_catalog_json.age;
    owner = "${declaredSettings.username}";
    group = "${declaredSettings.username}";
    mode = "0400";
  };
}
