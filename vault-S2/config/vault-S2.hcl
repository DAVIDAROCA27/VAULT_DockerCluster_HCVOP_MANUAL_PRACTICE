storage "raft" {
  path    = "/vault/data"
  node_id = "vault-S2"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
  cluster_address = "0.0.0.0:8201"
}

api_addr = "http://vault-S2:8200"
cluster_addr = "http://vault-S2:8201"
ui = true
disable_mlock = true
license_path = "/vault/license/vault.lic"