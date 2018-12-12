#!/usr/bin/env bash

sudo apt install -y mongodb

mongod --port 5000 &
echo "[+] Mongo started..."
