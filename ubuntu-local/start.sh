#!/usr/bin/env bash

set -euxo pipefail

apt-get update
apt-get install -y mailway

mailway setup --local
tail -f /var/log/journal/*.log
