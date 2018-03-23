{% from "nfs/map.jinja" import nfs with context %}

include:
  - nfs.client


{% for m in salt['pillar.get']('nfs:unmount', {}).items() %}
{{ m[1].mountpoint }}:
  mount.unmounted:
    - device: {{ m[1].location }}
    - {{ m[1].persist|default(nfs.persist_unmount) }}
{% endfor %}
