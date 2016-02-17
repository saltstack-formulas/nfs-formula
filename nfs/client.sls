{% from "nfs/map.jinja" import nfs with context %}

nfs-client-deps:
    pkg.installed:
        - pkgs: {{ nfs.pkgs_client|json }}
