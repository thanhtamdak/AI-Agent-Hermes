#!/bin/bash
export NODE_OPTIONS="--max-old-space-size=400"
npx next start -p 7860 -H 0.0.0.0
