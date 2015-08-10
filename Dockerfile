########################################################
# Here runs Vault from Hashicorp. It is used to manage
# secrets for the Rolltime family of services.
########################################################

FROM cgswong/vault:latest

MAINTAINER Luis Capelo <luiscape@gmail.com>

CMD ["vault", "server"]
