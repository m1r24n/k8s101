sudo ip netns exec blue ip link set dev lo up
sudo ip netns exec blue ip link set dev veth0b up
sudo ip netns exec blue ip addr add dev veth0b 192.168.101.0/31
sudo ip netns exec red ip link set dev lo up
sudo ip netns exec red ip link set dev veth0r up
sudo ip netns exec red ip addr add dev veth0r 192.168.101.1/31
