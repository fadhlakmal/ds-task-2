cat scenario.sh 
#!/bin/bash
#
#
# Two clients try to write to the same key ('color') at the same time.
CLIENT_PY="./kvclient.py"
NODES="192.168.122.11:8001,192.168.122.12:8002,192.168.122.13:8003,192.168.122.14:8004,192.168.122.15:8005"

echo "--- Racing commands... ---"
python3 $CLIENT_PY --nodes $NODES race "PUT color blue" "PUT color red"

# wait for propagation
sleep 2

echo ""
echo "--- Reading 'color' from all nodes... ---"
python3 $CLIENT_PY --nodes $NODES getall color
