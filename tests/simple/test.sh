#!/usr/bin/env bash

testDir="$(dirname "${BASH_SOURCE[0]}")"

act \
--secret-file ".env.secrets" \
--workflows "$testDir/test.yml" \
--container-architecture "linux/amd64" \
--eventpath "$testDir/test.json"
