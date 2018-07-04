---
layout: post
title: OpenStack with Heat templates
---
![_config.yml]({{ site.baseurl }}/18343_OpenStack_Vertical_Logo.jpg)

## <u>OpenStack commands</u>

  - openstack stack list (deployed stacks in your tennancy)
  - openstack flavor list -- show potential flavours.
  - openstack image list -- show list of images.


## Tutorials
https://www.stratoscale.com/blog/openstack/best-practices-openstack-heat-templates/

>Portal deployment includes:
  - OS::Neutron::SecurityGroup * 2 -- 1 for tcp 1 for HTTPS
  - OS::Neutron::Subnet -- defines portal subnet
  - OS::Neutron::RouterInterface
  - OS::Neutron::Port * 3 ?
  - OS::Neutron::Port -- HA PROXY
  - OS::Neutron::Port -- db port
  - OS::Nova::Server * 3 portal web servers
  - OS::Nova::Server * 1 db servers
  - OS::Nova::Server * Ha Proxy


## OS::Neutron::SecurityGroup

A resource for managing Neutron security groups. Security groups are sets of IP filter rules that are applied to an instance’s networking. They are project specific, and project members can edit the default rules for their group and add new rules sets. All projects have a “default” security group, which is applied to instances that have no other security group defined.

![_config.yml]({{ site.baseurl }}/Screen Shot 2018-07-03 at 16.00.13.png)


## OS::Neutron::Subnet
A resource for managing Neutron subnets.

A subnet represents an IP address block that can be used for assigning IP addresses to virtual instances. Each subnet must have a CIDR and must be associated with a network. IPs can be either selected from the whole subnet CIDR, or from “allocation pools” that can be specified by the user.


## OS::Neutron::RouterInterface¶

A resource for managing Neutron router interfaces.
Router interfaces associate routers with existing subnets or ports.
