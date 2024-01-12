# Proxmox Infrastructure – infra_proxmox

This folder contains everything related to the **Proxmox layer** of the lab:

- Base OS / Proxmox host setup
- Network configuration (bridge + VLANs)
- NAS + ZFS mirror + NFS for backups

It’s the foundation that the rest of the stack (backups, AI agent, monitoring, etc.) will run on.

> 🖥️ Proxmox host (your lab): `https://192.168.10.12:8006`

---

## 1. Structure

```text
infra_proxmox/
└── infra_proxmox/
    ├── infra_proxmox_v1/
    │   ├── proxmox-base-setup/
    │   ├── proxmox-vlan-network/
    │   └── proxmox-nas-mirror/
    ├── infra_proxmox_v2/
    │   ├── proxmox-base-setup/
    │   ├── proxmox-vlan-network/
    │   └── proxmox-nas-mirror/
    └── infra_proxmox_v3/
        ├── proxmox-base-setup/
        ├── proxmox-vlan-network/
        └── proxmox-nas-mirror/
