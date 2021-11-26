haproxy_installdir: /usr/local/haproxy
haproxy_version: 2.5.0

nodes:
 - web01 192.168.220.13:8080
 - web02 192.168.220.14:80
 - web03 192.168.220.15:8081
 
haproxy_network_card: ens33
haproxy_virtual_router_id: 77
haproxy_master_priority: 100
haproxy_backup_priority: 99
haproxy_auth_pass: 8KXLPq0R
haproxy_vip: 192.168.220.250
haproxy_master_ip: 192.168.220.10
haproxy_backup_ip: 192.168.220.17
haproxy_port: 80
haproxy_info:
  - 192.168.220.10
  - 192.168.220.17
