---
layout: post
title: SINT OpenStack Brief
---

## Brief

> - define the infrastructure behind SINT using OpenStack heat templates
>  - define the software configuration for SINT using Ansible
>  - Bring them together running on OpenStack

## Git Clone

https://bitbucket.il2management.local/projects/HEAT/repos/trebuchet/browse/infra.yaml

## Requirements

- pip install python-heatclient
- pip install openstackcli


## SINT Deployment

<table>
  <tbody>
    <tr>
      <td>3 x SINT WebServer nodes

        - web server software
        - ryslog
        - other componenets TBC</td>
      <td>1 x HAProxy node;
        - rsyslog</td>
      <td> x SINT DB
        - mariaDBs
        - rsyslog</td>
    </tr>
  </tbody>
</table>

## Bonus

> - **I need a medic over here** Use 2 x Ha Proxy nodes w/ keepalived.
> - **Keep it a secret, keep it safe** - Cluster MariaDb in master/slave configuration.
> - **Oscar Mike** - COnfigure the Board HA Proxy to proxy connections through to sint HaProxy Host Header ACL.

<cite>You got three weeks. If you fail, I want your badge and your gun on my desk, pronto.</cite> 
##  Required reading
  - Ha proxy
  - openstack heat
  - Ansible
  - rsyslogss
