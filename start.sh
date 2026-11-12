#!/bin/bash
echo "1. Khoi dong 9Router..."
9router --port 20128 &
sleep 5

echo "2. Khoi phuc cau hinh Hermes..."
mkdir -p ~/.hermes
cp /app/config.yaml ~/.hermes/config.yaml

echo "3. Khoi dong Hermes Gateway..."
hermes gateway --port 7860
