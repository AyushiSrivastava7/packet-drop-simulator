# Packet Drop Simulator using Mininet

## Problem Statement
Simulate packet loss using SDN flow rules in Mininet.

## Setup & Execution
Run:
sudo python3 src/packet_drop_sim.py

Then test:
pingall
iperf

## Expected Output
- Controlled packet drops
- Verified ping loss
- Reduced throughput in iperf

## Proof of Execution
- Flow tables → screenshots/flow_table.png
- Ping results → screenshots/ping.png
- Iperf results → screenshots/iperf.png
- Wireshark capture → screenshots/wireshark.png

## References
- Mininet: http://mininet.org
- OpenFlow documentation
