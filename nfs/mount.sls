{% from "nfs/map.jinja" import nfs with context %}

include:
  - nfs.client

{% for m in salt['pillar.get']('nfs:mount', {}).items() %}
{{ m[1].mountpoint }}:
  mount.mounted:
    - device: {{ m[1].location }}
    - fstype: nfs
{# Not every platform needs options #}
{% if 'opts' in m[1] or nfs.mount_opts %}
    - opts: {{ m[1].opts|default(nfs.mount_opts) }}
{% endif %}
    - persist: {{ m[1].persist|default(nfs.persist_mount) }}
    - mkmnt: {{ m[1].mkmnt|default(nfs.mkmnt) }}
{% endfor %}
