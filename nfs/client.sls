{% from "nfs/map.jinja" import nfs with context %}

{% if nfs.pkgs_client %}
nfs-client:
    pkg.installed:
        - pkgs: {{ nfs.pkgs_client|json }}
{% endif %}
