#!/bin/bash

#
# Configure the basic user
# based on environment variables.
#
vault write auth/userpass/users/rolltime password=$VAULT_PASSWORD policies=root
