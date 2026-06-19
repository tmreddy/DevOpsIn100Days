Linux Server Toolkit

Essentials (installation + basics)

ssh — remote shell (OpenSSH). Install: apt/yum install openssh-server. Start/enable systemd service: systemctl enable --now sshd.
sudo — privilege elevation; configure /etc/sudoers with visudo.
curl / wget — HTTP client for downloads.
tmux / screen — terminal multiplexers for persistent sessions.
htop / atop / glances — interactive process and system monitors.
ncdu — disk usage explorer.
rsync — efficient file sync and backups.
cron / systemd timers — scheduled tasks.
Networking & troubleshooting

ip / ss / netstat — inspect interfaces, routes, sockets (ip a, ip r, ss -tuln).
traceroute / mtr — path and latency diagnostics.
tcpdump / tshark — packet capture and analysis.
nmap — port/service discovery.
iptables / nftables — firewall rules; use firewalld/ufw for simpler management.
fail2ban — automatic banning for suspicious logins.
Storage & filesystems

lsblk / blkid — block device info.
fdisk / parted — partitioning.
mkfs / tune2fs / xfs_admin — format and tune filesystems.
lvm2 — logical volume management.
smartctl — SMART disk health checks.
Security & hardening

openssh config — disable root login, use key auth, change port if desired.
auditd — audit logging.
selinux / apparmor — mandatory access controls (enable and learn basics).
chkrootkit / rkhunter — rootkit detection.
openssl / gnutls — cert and crypto utilities.
Logging & observability

journalctl — systemd logs (journalctl -u servicename).
rsyslog / syslog-ng — centralized logs (if not using journal forwarding).
prometheus + node_exporter — metrics scraping.
grafana — dashboards.
fluentd / filebeat / logstash — log shipping to central store.
Backup & recovery

borg / restic — deduplicating encrypted backups.
tar / gzip / zstd — archives and compression.
partclone / ddrescue — disk imaging and recovery.
fsck — filesystem check/repair (unmount first).
Automation & config management

ansible — agentless orchestration (recommended).
salt / puppet / chef — alternatives for larger fleets.
packaging tools — apt, yum/dnf, zypper for OS packages.
Performance & tuning

perf / bpftrace — profiling and tracing.
iostat / vmstat / sar — I/O and system stats.
sysctl — kernel parameter tuning (/etc/sysctl.conf).
Container & virtualization

docker / podman — containers.
kubernetes (k3s/minikube) — orchestration.
qemu/kvm + libvirt — VMs.
Useful scripts & snippets

Quick disk free highest folders:


du -sh /* 2>/dev/null | sort -h
Kill process using most CPU:


ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
Find large files (>100MB):


find / -type f -size +100M -exec ls -lh {} \; 2>/dev/null
Recommended setup checklist (baseline for a new server)

Update OS and packages.
Create non-root sudo user and disable root SSH login.
Set up SSH keys and disable password auth.
Configure firewall (allow SSH, app ports).
Install monitoring (node_exporter) and log forwarding.
Configure regular backups (test restores).
Harden SSH, enable automatic updates or patch process.
Configure intrusion prevention (fail2ban) and auditd.
Enable disk health checks and alerting.
Document recovery steps and store creds in a secrets manager.
