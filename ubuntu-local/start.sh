#!/usr/bin/env bash

set -euxo pipefail

mailway setup --local
tail -f /var/log/journal/*.log
