#!/bin/bash
9router --port 7860 --host 0.0.0.0 --no-daemon || (9router --port 7860 --host 0.0.0.0 && tail -f /dev/null)
