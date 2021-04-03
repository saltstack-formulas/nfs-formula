{% from "nfs/map.jinja" import nfs with context %}

include:
  - nfs.service


{% if nfs.pkgs_server %}
nfs-server-deps:
    pkg.installed:
        - pkgs: {{ nfs.pkgs_server|json }}
        - require_in:
          - service: nfs-service
{% endif %}

nfs-exports-configure:
  file.managed:
    - name: {{ nfs.exports_file }}
    - source: {{ nfs.export_template }}
    - template: jinja
    - watch_in:
      - service: nfs-service

{% if grains.get('os') == 'FreeBSD' %}
  {% set mountd_flags = salt['pillar.get'](
        'nfs:server:mountd_flags', None) -%}
  {% if mountd_flags %}
mountd_flags:
  sysrc.managed:
    - value: {{ mountd_flags }}
  {% endif %}
{% endif %}
