#!/bin/bash

pnpm config set store-dir /home/node/.pnpm-store
rm -rf .pnpm-store
pnpm install