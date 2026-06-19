Here’s a compact, copy‑pasteable reference of common Linux system‑monitoring commands grouped by area. Use sudo where needed.

CPU & load
- top
- htop
- mpstat -P ALL 1
- vmstat 1
- uptime
- cat /proc/loadavg

Memory
- free -h
- vmstat 1
- smem -r
- ps aux --sort=-%mem | head -n 20
- watch -n 5 "grep -i memtotal /proc/meminfo && grep -i memavailable /proc/meminfo"

Disk & filesystem
- df -h
- df -i
- lsblk
- du -sh /var/log/* | sort -h
- ncdu / (interactive)
- find / -type f -size +100M -exec ls -lh {} \; 2>/dev/null
- tune2fs -l /dev/sdXN
- dumpe2fs -h /dev/sdXN

I/O & storage performance
- iostat -x 1
- iotop -o
- blktrace / blkparse (advanced)
- sar -d 1 5
- smartctl -a /dev/sdX

Network
- ip a
- ip r
- ss -tuln
- ss -s
- ss -o state established '( sport = :http or sport = :https )'
- iftop -i eth0
- ifstat 1
- nethogs
- ethtool eth0
- tc -s qdisc show dev eth0
- iperf3 -s (server) / iperf3 -c host

Packet capture & inspection
- tcpdump -i eth0 -n -w capture.pcap
- tcpdump -i eth0 -n port 80 and host 1.2.3.4
- tshark -r capture.pcap

Processes & services
- ps aux --sort=-%cpu | head
- pgrep -a processname
- pidstat 1
- systemctl status servicename
- journalctl -u servicename -f
- journalctl -k

Logs & auditing
- tail -F /var/log/syslog
- tail -F /var/log/auth.log
- ausearch -m AVC,USER_AVC -ts recent (auditd)
- journalctl --since "1 hour ago" --no-pager

Containers & VMs
- docker ps --format '{{.Names}}\t{{.Status}}\t{{.Names}}'
- docker stats --no-stream
- docker inspect container
- podman ps / podman stats
- virsh list --all
- virsh dominfo vmname

Application & HTTP checks
- curl -sS -o /dev/null -w "%{http_code} %{time_total}s\n" http://localhost:8080/health
- ab -n 1000 -c 50 http://host/
- siege or hey (load testing)
- ss -tan | grep :80 | wc -l

Database quick checks (examples)
- MySQL: mysqladmin ping; mysql -e "SHOW PROCESSLIST\G"
- Postgres: psql -c "SELECT count(*) FROM pg_stat_activity;" ; psql -c "SELECT * FROM pg_stat_activity WHERE state <> 'idle';"

Security & auth
- last -n 20
- lastb
- faillog
- grep "Failed password" /var/log/auth.log | tail
- sudo journalctl -u ssh -f

Hardware & sensors
- sensors
- ipmitool sdr elist
- lm_sensors
- lscpu

Metrics & exporters (Prometheus-friendly)
- node_exporter (install and query /metrics)
- curl http://localhost:9100/metrics | grep node_cpu_seconds_total

Realtime dashboards & tracing
- bpftrace -e 'tracepoint:syscalls:sys_enter_execve { printf("%s %s\n", comm, str(args->argv[0])); }' (example)
- perf top
- eBPF tools: bpftools, runqslower, execsnoop

Useful one‑liners
- Top CPU consumers: ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head
- Top disk usage dirs: du -sh /* 2>/dev/null | sort -h
- Find recent big files: find / -type f -mtime -7 -size +50M -ls 2>/dev/null
- Check open network connections per process: ss -tup | awk '{print $6,$7}' | sort | uniq -c | sort -nr

Tips
- Combine with watch for live updates: watch -n 2 'df -h; echo; free -h'
- For long investigations, capture outputs to files (e.g., sar, iostat, tcpdump) for later analysis.
- Prefer installing htop, nmon, glances, and node_exporter for easier monitoring.

Want a printable one‑page cheatsheet (PDF/markdown) or a tailored script to install monitoring tools on Ubuntu?
