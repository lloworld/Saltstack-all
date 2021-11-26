include:
  - modules.cluster.keepalived.install

backup-config-file:
  file.managed:
    - name: /etc/keepalived/keepalived.conf
    - source: salt://modules/cluster/keepalived/files/backup_keepalived.conf.j2
    - template: jinja

backup-keepalived.service:
  service.running:
    - name: keepalived.service
    - enable: true
    - reload: true
    - require:
      - pkg: download-keepalived
    - watch:
      - file: /etc/keepalived/keepalived.conf

