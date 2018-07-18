---
layout: post
title: CMDB OpenStack Brief
---

> ## Brief
>
> - define the infrastructure behind CMDB using OpenStack heat templates
>  - define the software configuration for CMDB using Ansible
>  - Bring them together running on OpenStack
>
> ### Git Clone
>
> https://bitbucket.il2management.local/projects/HEAT/repos/trebuchet/browse/infra.yaml
>
> ## Requirements
>
> - pip install python-heatclient
> - pip install openstackcli
>
>
>## CMDB Deployment
>
><table>
>  <tbody>
>    <tr>
>      <td>3 x CMDB WebServer nodes
>
>        - web server software
>        - ryslog
>        - other componenets TBC</td>
>      <td>1 x HAProxy node;
>        - rsyslog</td>
>      <td> x CMDB DB
>        - mariaDBs
>        - rsyslog</td>
>    </tr>
>  </tbody>
></table>
>
>## Bonus
>
> - **I need a medic over here** Use 2 x Ha Proxy nodes w/ keepalived.
> - **Keep it a secret, keep it safe** - Cluster MariaDb in master/slave configuration.
> - **Oscar Mike** - COnfigure the Board HA Proxy to proxy connections through to CMDB HaProxy Host Header ACL.
>
><cite>You got three weeks. If you fail, I want your badge and your gun on my desk, pronto.</cite>
> ##  Required reading
>  - Ha proxy
>  - openstack heat
>  - Ansible
>  - rsyslogss
