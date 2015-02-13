{% from "nfs/map.jinja" import nfs with context %}

nfs-server-deps:
    pkg.installed:
        - pkgs: {{ nfs.pkgs_server|json }}

/etc/exports:
  file.managed:
    - source: salt://nfs/files/exports
    - template: jinja
    - watch_in:
      - service: nfs-service

nfs-service:
  service.running:
    - name: {{ nfs.service_name }}
    - enable: True
