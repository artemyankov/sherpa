#!/usr/bin/env bash


apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 68818C72E52529D4
echo "deb http://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.0.list
apt-get update
apt-get install -y mongodb-org
mongod --port 5000 &
