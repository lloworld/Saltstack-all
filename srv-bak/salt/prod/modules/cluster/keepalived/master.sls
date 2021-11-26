include:
  - modules.cluster.keepalived.install

master-config-file:
  file.managed:
    - name: /etc/keepalived/keepalived.conf
    - source: salt://modules/cluster/keepalived/files/master_keepalived.conf.j2
    - template: jinja

master-keepalived-service:
  service.running:
    - name: keepalived.service
    - enable: true
    - reload: true
    - require:
      - pkg: download-keepalived
    - watch:
      - file: /etc/keepalived/keepalived.conf
