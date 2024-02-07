
#!/bin/bash
zpool create -f backup mirror /dev/sdb /dev/sdc
zfs create backup/pbs
zfs set atime=off compression=lz4 backup/pbs
