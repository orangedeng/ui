#!/bin/bash

# this script will be placed in / and ui.tgz folder will be placed in / too
# and it assumes that target ui repo will be in /ui
echo "restoring dependencies"
tar -xzf ./ui.tgz

cd /ui

echo "reset to git head"
git reset --hard

./scripts/build-static -s