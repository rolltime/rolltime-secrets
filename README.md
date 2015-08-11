## Rolltime Vault
Managing secrets for the Rolltime application.


## Usage
After building image, run it with the `VAULT_PASSWORD` environment variable. It will be necessary to fetch user tokens and communicate with the secrets application.

```
docker run -d -e VAULT_PASSWORD=foo -p 0.0.0.0:8200:8200 \
   --name vault --memory-swap=-1 luiscape/rolltime-secrets:latest
```
