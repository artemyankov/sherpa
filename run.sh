#!/usr/bin/env bash

export SHERPA_DB_HOST==$(echo $PS_HOSTS | awk -F ':' '{print $1}')
export SHERPA_DB_PORT=5000

if [$TYPE = "ps" ]; then
    # install mongo and open up port
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
    echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
    apt-get update
    apt-get install -y mongodb-org
    mongod --port 5000
else
    python examples/parallel-examples/bianchini/runner.py -l $WORKER_HOSTS
fi





