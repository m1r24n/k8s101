sudo ip link add veth1r type veth peer veth1r-br
sudo ip link set veth1r-br master lan1
sudo ip link set dev veth1r-br up
sudo ip link set veth1r netns red
sudo ip netns exec red ip link set dev veth1r up
sudo ip netns exec red ip addr add 10.1.1.191/24 dev veth1r
