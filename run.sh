#!/usr/bin/env bash

apt install -y mongodb

mongod --port 5000 &
echo "[+] Mongo started..."
