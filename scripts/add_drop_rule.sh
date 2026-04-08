#!/bin/bash

echo "Adding drop rule..."

# Example (OpenFlow rule via ovs-ofctl)
sudo ovs-ofctl add-flow s1 "in_port=1,actions=drop"

echo "Drop rule added"
