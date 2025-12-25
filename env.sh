export UNSEAL_VAULT_P1_KEY=$(cat /home/davidaroca/Escritorio/vault-ha-dr/vault-ha-docker/vault-P1/config/keys.txt | sed -n '1p')
export UNSEAL_VAULT_S1_KEY=$(cat /home/davidaroca/Escritorio/vault-ha-dr/vault-ha-docker/vault-S1/config/keys.txt | sed -n '1p')
export UNSEAL_VAULT_T3_KEY=$(cat /home/davidaroca/Escritorio/vault-ha-dr/vault-ha-docker/vault-T3/config/keys.txt | sed -n '1p')

export ROOT_VAULT_P1_KEY=$(cat /home/davidaroca/Escritorio/vault-ha-dr/vault-ha-docker/vault-P1/config/keys.txt | sed -n '2p')
export ROOT_VAULT_S1_KEY=$(cat /home/davidaroca/Escritorio/vault-ha-dr/vault-ha-docker/vault-S1/config/keys.txt | sed -n '2p')
export ROOT_VAULT_T3_KEY=$(cat /home/davidaroca/Escritorio/vault-ha-dr/vault-ha-docker/vault-T3/config/keys.txt | sed -n '2p')