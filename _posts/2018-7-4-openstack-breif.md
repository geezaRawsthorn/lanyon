---
layout: post
title: SINT OpenStack Brief
---

## Brief

> - define the infrastructure behind SINT using OpenStack heat templates
  - define the software configuration for SINT using Ansible
  - Bring them together running on OpenStack

### Git Clone

https://bitbucket.il2management.local/projects/HEAT/repos/trebuchet/browse/infra.yaml

### Requirements

- pip install python-heatclient
- pip install openstackcli


### SINT Deployment

3 x SINT WebServer nodes
  - web server software
  - ryslog
  - other componenets TBC
1 x HAProxy node;
  - rsyslog
1 x SINT DB
  - mariaDBs
  - rsyslog

  Required reading
  - Ha proxy
  - openstack heat
  - Ansible
  - rsyslogss
-----------------
