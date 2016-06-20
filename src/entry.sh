#!/bin/sh

set -e

run_vault() {
    exec /bin/vault $@
}

while [ ! -f "/config/config.hcl" ]; do
    sleep 1
done

sleep 5
run_vault $@
