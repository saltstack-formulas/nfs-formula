{% from "nfs/map.jinja" import nfs with context %}

include:
  - nfs.client

{% for m in salt['pillar.get']('nfs:unmount', {}).iteritems() %}
{{ m[1].mountpoint }}:
  mount.unmounted:
    - device: {{ m[1].location }}
    - persist: {{ m[1].persist|default('False') }}
{% endfor %}
