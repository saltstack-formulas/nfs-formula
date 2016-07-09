{% from "nfs/map.jinja" import nfs with context %}

{% if nfs.pkgs_server %}
nfs-server-deps:
    pkg.installed:
        - pkgs: {{ nfs.pkgs_server|json }}
{% endif %}

/etc/exports:
  file.managed:
    - source: salt://nfs/files/exports
    - template: jinja
    - watch_in:
      - service: nfs-service

nfs-service:
  service.running:
{% if nfs.service_name is string %}
    - name: {{ nfs.service_name }}
{% elif nfs.service_name is iterable %}
    - names: {{ nfs.service_name }}
{% endif %}
    - enable: True
