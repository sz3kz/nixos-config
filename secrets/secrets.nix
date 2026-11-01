let
  hostKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEzC1ToFnOuvOwoBPsAA28xzUIty7yZqbnFF8KRJ4e0D root@apparatus";
in
{
  "model_catalog_json.age".publicKeys = [ hostKey ];
  "password-hash.age".publicKeys = [ hostKey ];
}
