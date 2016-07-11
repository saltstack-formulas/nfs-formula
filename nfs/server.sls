{% from "nfs/map.jinja" import nfs with context %}

nfs-server-deps:
    pkg.installed:
        - pkgs: {{ nfs.pkgs_server|json }}

/etc/exports:
  file.managed:
    - source: {{ nfs.export_template }}
    - template: jinja
    - watch_in:
      - service: nfs-service

nfs-service:
  service.running:
    - name: {{ nfs.service_name }}
    - enable: True
