---
layout: post
title: Required Reading
---

<div class="message">
  This is required reading in understanding, Ha Proxy, Openstack heat templates,
  Ansible, and rsyslog.
</div>

## <a href="https://www.haproxy.com/solutions/load-balancing/">Ha Proxy</a>

HAProxy - High availability Proxy.
used to improve performance & reliability of servers by distributing the workload between multiple servers.
Similar products include Nginx, squid, Varnish.

### High Availability
![_config.yml]({{ site.baseurl }}/HA.png)

To overcome this issue a high-availability configuration is mostly preferred because it eliminates a single point of failure. By adding redundancy to each layer of your architecture, HA configuration prevents a single server failure point.

## Bash

{% highlight js %}
set -eE
{% endhighlight %}

## <a href="https://docs.ansible.com/">Ansible</a>

Ansible is a simple and powerful automation engine. It is used to help with configuration management, application deployment, and task automation.

<cite>Maybe spin up a box in openstack and fire ansible at it?</cite>

### Ansible Playbooks.

Are a way of sending configuration commands to a remote computer in a scripted way.

### Basic Playbook - Configures an NGINX server

{% highlight js %}
---
- hosts: droplets
  tasks:
    - name: Installs nginx web server
      apt: pkg=nginx state=installed update_cache=true
      notify:
        - start nginx

  handlers:
    - name: start nginx
      service: name=nginx state=started
{% endhighlight %}
