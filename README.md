# VAULT_DockerCluster_HCVOP_MANUAL_PRACTICE

This is a small cluster runned by podman to manually practice to the Vault   Operations Professional exam, the objective is to manually set up auto_unseal with transit,disaster recovery and vault agent.

```
podman build -t vault-hcvop-dr:1.0 .
podman-compose up -d
podman ps
```
 
