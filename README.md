# Packet Drop Simulator using SDN (Mininet + OpenFlow)

## Problem Statement
This project demonstrates a Software Defined Networking (SDN) based Packet Drop Simulator using Mininet and OpenFlow flow rules. The system simulates packet loss by installing match-action rules in the switch that selectively drop traffic between specific hosts. It helps in understanding SDN concepts such as centralized control, flow table management, and dynamic traffic control.

---

## Setup / Execution Steps

### 1. Start Mininet Topology
sudo mn --topo single,3

### 2. Check Network Connectivity
mininet> pingall  
Expected: 0% packet loss

### 3. Test Normal Communication
mininet> h1 ping h2  
mininet> h1 ping h3  
Expected: All hosts communicate successfully

### 4. Add Packet Drop Rule (Open new terminal)
sudo ovs-ofctl add-flow s1 "ip,nw_src=10.0.0.1,nw_dst=10.0.0.2,actions=drop"

### 5. Test Packet Drop
mininet> h1 ping -c 5 10.0.0.2  
Expected: 100% packet loss

### 6. Verify Flow Rules
sudo ovs-ofctl dump-flows s1

### 7. Reset Network (Regression Test)
sudo mn -c

---

## Expected Output

Before applying rules:
- All hosts communicate successfully
- pingall shows 0% packet loss

After applying drop rule:
- h1 → h2 traffic is blocked
- 100% packet loss for that flow
- h1 → h3 still works normally

Flow table:
- Shows installed OpenFlow drop rule in switch

---

## Conclusion
This project demonstrates packet loss simulation using SDN flow rules. It shows how OpenFlow enables programmable control over network traffic, allowing selective packet dropping and dynamic network behavior control.
