#!/bin/bash

echo "Removing all flow rules..."

sudo ovs-ofctl del-flows s1

echo "All rules removed"
