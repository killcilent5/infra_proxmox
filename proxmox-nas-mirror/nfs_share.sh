
#!/bin/bash
apt update && apt install -y nfs-kernel-server
mkdir -p /backup/pbs
echo "/backup/pbs 192.168.10.0/24(rw,sync,no_subtree_check)" >> /etc/exports
exportfs -ra && systemctl restart nfs-kernel-server
