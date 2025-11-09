#!/bin/bash

python3 ./kv.py --id 5 --tcp 8005 --udp 8105 --peers 127.0.0.1:8001=1,127.0.0.1:8002=2,127.0.0.1:8003=3,127.0.0.1:8004=4 --logger-addr 127.0.0.1:9000 --numnodes 5 --use-mutex 0
