#!/usr/bin/env bash

# Processing JSON in shell scripts
# https://www.terraform.io/docs/providers/external/data_source.html#processing-json-in-shell-scripts

set -e

# Extract "host" argument from the input into HOST shell variable
eval "$(jq -r '@sh "HOST=\(.host)"')"

MANAGER=$(ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@$HOST docker swarm join-token manager -q)
WORKER=$(ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null root@$HOST docker swarm join-token worker -q)

# produce a json object containing the tokens
jq -n --arg manager "$MANAGER" --arg worker "$WORKER" '{"manager":$manager,"worker":$worker}'
