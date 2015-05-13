{% from "nfs/map.jinja" import nfs with context %}

include:
  - nfs.client

{% for m in salt['pillar.get']('nfs:mount').iteritems() %}
{{ m[1].mountpoint }}:
  mount.mounted:
    - device: {{ m[1].location }}
    - fstype: nfs
    - opts: {{ m[1].opts|default('vers=3') }}
    - persist: {{ m[1].persist|default('True') }}
    - mkmnt: {{ m[1].mkmnt|default('True') }}
{% endfor %}
