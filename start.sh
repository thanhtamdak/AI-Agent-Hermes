#!/bin/bash
export NODE_OPTIONS="--max-old-space-size=384"
export PORT=7860
export HOSTNAME="0.0.0.0"

APP_PATH=$(npm root -g)/9router
cd "$APP_PATH"
npx next start -p 7860 -H 0.0.0.0
