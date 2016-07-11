{% from "nfs/map.jinja" import nfs with context %}

{% if nfs.pkgs_client %}
nfs-client-deps:
    pkg.installed:
        - pkgs: {{ nfs.pkgs_client|json }}
{% endif %}
