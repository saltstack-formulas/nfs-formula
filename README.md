nfs-formula
===========

Available states
================

.. contents::
    :local:

``nfs.server``
---------------

Install nfs server components

``nfs.client``
---------------

Install nfs client components

``nfs.mount``
---------------

Mount nfs shares via. pillar using the following parameters:
* mountpoint
* location
* opts: default => "vers=3"
* persist: default => True
* mkmnt: default => True

``nfs.unmount``
---------------

Unmount nfs shares via. pillar using the following parameters:
* mountpoint
* location
* persist: default => False
