storage "raft" {
  path    = "/vault/data"
  node_id = "vault-S1"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
  cluster_address = "0.0.0.0:8201"
}

retry_join {
  leader_api_addr = "http://vault-S2:8200"
}

retry_join {
  leader_api_addr = "http://vault-S3:8200"
}

seal "transit" {
  address = "http://vault-T3:8200"
  key_name = "autounseal"
  mount_path = "transit/"
  tls_skip_verify = "true"
  token =  "hvs."
}

api_addr = "http://vault-S1:8200"
cluster_addr = "http://vault-S1:8201"
ui = true
disable_mlock = true
license_path = "/vault/license/vault.lic"