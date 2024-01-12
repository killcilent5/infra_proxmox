
#!/bin/bash
# Proxmox base setup script
set -e
apt update && apt full-upgrade -y
apt install -y vim curl htop qemu-guest-agent ifupdown2
if ! grep -q "bridge-vlan-aware yes" /etc/network/interfaces; then
  sed -i '/iface vmbr0 inet /a \    bridge-vlan-aware yes' /etc/network/interfaces
fi
systemctl enable qemu-guest-agent --now
