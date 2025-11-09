#!/bin/bash

python3 ./kv.py --id 4 --tcp 8004 --udp 8104 --peers 127.0.0.1:8001=1,127.0.0.1:8002=2,127.0.0.1:8003=3,127.0.0.1:8005=5 --logger-addr 127.0.0.1:9000 --numnodes 5 --use-mutex 0
