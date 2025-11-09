#!/bin/bash
#

# Single PUT to node 1
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004,127.0.0.1:8005 cmd --node 1  "PUT color blue"


# GET from node 2
python3 ./kvclient.py  --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004,127.0.0.1:8005 cmd --node 2   "GET color"


# Race two writers (great for no-mutex demo)
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004,127.0.0.1:8005 race  "PUT color blue" "PUT color red"


# Read the key from ALL nodes after the race
python3 ./kvclient.py --nodes 127.0.0.1:8001,127.0.0.1:8002,127.0.0.1:8003,127.0.0.1:8004,127.0.0.1:8005 getall color




