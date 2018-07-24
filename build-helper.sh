#!/bin/bash

rm -rf node_modules
./scripts/update-dependencies
mkdir ui
mv node_modules ./ui/
tar -czf ui.tgz ./ui
docker build -t reg.cnrancher.com/orstar/rancher-ui-helper:v0.1 -f Dockerfile.base .