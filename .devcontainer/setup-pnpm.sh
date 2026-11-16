#!/usr/bin/env bash

# exit immediately if a command exits with a non-zero status.
set -e

# set .pnpm-store at home instead of workspace directory.
pnpm config set store-dir /home/node/.pnpm-store

# remove .pnpm-store from workspace directory.
rm -rf .pnpm-store

pnpm install --config.confirmModulesPurge=false # preferred over `CI=true pnpm install`
# --config.confirmModulesPurge=false: skip the confirmation prompt when pnpm needs to remove node_modules
