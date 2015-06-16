{% from "nfs/map.jinja" import nfs with context %}

include:
  - nfs.client

# Parameter device for mount.unmounted: New in version 2015.5.0.
# Errors: if not used with newer minions
# Warnings: if used with older minions
# Using the following values followed by the conditional avoids both issues
{% set version_year = grains.saltversioninfo[0] %}
{% set version_month = grains.saltversioninfo[1] %}
{% set min_year = 2015 %}
{% set min_month = 5 %}
{% set use_device = (version_year > min_year or (version_year == min_year and version_month >= min_month)) %}

{% for m in salt['pillar.get']('nfs:unmount').iteritems() %}
{{ m[1].mountpoint }}:
  mount.unmounted:
  {% if use_device %}
    - device: {{ m[1].location }}
  {% endif %}
    - persist: {{ m[1].persist|default('False') }}
{% endfor %}
