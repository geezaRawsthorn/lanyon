---
layout: post
title: OpenStack with Heat templates
---
![_config.yml]({{ site.baseurl }}/18343_OpenStack_Vertical_Logo.jpg)

## OpenStack Set up Mac OSX
vi ~/.zshrc
{% highlight js %}
// create openstack alias for effient terminal command
alias o-s="openstack"
// source your bash file
source ~/.zshrc
{% endhighlight %}

Download your unique openstack openRc.sh file.
{% highlight js %}
// mv openrc from downloads to current folder. save as hidden file.
mv ~/Downloads/{tennancy-name}openrc.sh ./.openrc
// source the file
source .openrc.sh
//Provide open stack credentials
{% endhighlight %}

## OpenStack Commands
  - o-s stack list (deployed stacks in your tennancy)
  - o-s flavor list -- show potential flavours.
  - o-s image list -- show list of images.
  - o-s keypair list - show keypairs
  - o-s stack create -e {name}.yaml
  - o-s stack delete {stack name}

## SINT Infrastructure
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

## Providing Default values

You can provide default values for parameters if the parameter is not given.
{% highlight js %}
parameters:
  flavor:
    type: string
    label: Instance Type
    description: Flavor to be used
   default: m1.small
{% endhighlight %}

## Template structure
{% highlight js %}
heat_template_version: 2016-10-14

description:
  # a description of the template

parameter_groups:
  # a declaration of input parameter groups and order

parameters:
  # declaration of input parameters

resources:
  # declaration of template resources

outputs:
  # declaration of output parameters

conditions:
  # declaration of conditions
{% endhighlight %}
## Tutorials
https://www.stratoscale.com/blog/openstack/best-practices-openstack-heat-templates/
