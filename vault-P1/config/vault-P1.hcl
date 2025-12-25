storage "raft" {
  path    = "/vault/data"
  node_id = "vault-P1"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1
  cluster_address = "0.0.0.0:8201"
}

seal "transit" {
  address = "http://vault-T3:8200"
  key_name = "autounseal"
  mount_path = "transit/"
  tls_skip_verify = "true"
  token = "hvs.CAESIMwraqs5uZRXih71x0gBz-VeteXZD4pIPKi8rPy3VmBKGiEKHGh2cy4yNWlsU0JsQWI0elB5a3pYR1dOdzVqRnYQ3hA"
}

api_addr = "http://vault-P1:8200"
cluster_addr = "http://vault-P1:8201"
ui = true
disable_mlock = true
license_path = "/vault/license/vault.lic"