#!/bin/bash
NS1="NS1"
NS2="NS2"
NODE_IP="192.168.0.10"
BRIDGE_SUBNET="172.16.0.0/24"
BRIDGE_IP="172.16.0.1"
IP1="172.16.0.2"
IP2="172.16.0.3"
TO_NODE_IP="192.168.0.11"
TO_BRIDGE_SUBNET="172.16.1.0/24"
TO_BRIDGE_IP="172.16.1.1"
TO_IP1="172.16.1.2"
TO_IP2="172.16.1.3"

echo "creating the namespaes"
sudo ip netns add $NS1
sudo ip netns add $NS2
sudo ip netns show

echo "Creating virtual adapters veth pairs"
sudo ip link add veth10 type veth peer name veth11
sudo ip link add veth20 type veth peer name veth21
ip link show type veth