{% from "nfs/map.jinja" import nfs with context %}

nfs-service:
{% if nfs.enabled %}
  service.running:
    - enable: True
{% else %}
  service.dead:
    - enable: False
{% endif %}
{% if nfs.service_name is string %}
    - name: {{ nfs.service_name }}
{% elif nfs.service_name is iterable %}
    - names: {{ nfs.service_name }}
{% endif %}
