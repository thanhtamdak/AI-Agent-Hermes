#!/bin/bash
export NODE_OPTIONS="--max-old-space-size=384"
export PORT=7860
export HOSTNAME="0.0.0.0"

ROUTER_DIR=$(npm root -g)/9router
cd "$ROUTER_DIR" && npm run start -- -p 7860 -H 0.0.0.0 || 9router -p 7860 -H 0.0.0.0
