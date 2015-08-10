########################################################
# Here runs Vault from Hashicorp. It is used to manage
# secrets for the Rolltime family of services.
########################################################

########################################################
# Based on: https://hub.docker.com/r/voxxit/vault/~/dockerfile/
########################################################

FROM voxxit/base:alpine

RUN  wget http://dl.bintray.com/mitchellh/vault/vault_0.2.0_linux_amd64.zip \
  && unzip vault_0.2.0_linux_amd64.zip \
  && mv vault /usr/local/bin/ \
  && rm -f vault_0.2.0_linux_amd64.zip

RUN export VAULT_ADDR=http://127.0.0.1:8200 \
  && wget https://raw.githubusercontent.com/rolltime/rolltime-secrets/master/bin/configure.sh \
  && https://raw.githubusercontent.com/rolltime/rolltime-secrets/master/bin/rolltime.hcl

EXPOSE 8200

ENTRYPOINT [ "vault" ]
CMD [ "server", "-config=rolltime.hcl" ]
