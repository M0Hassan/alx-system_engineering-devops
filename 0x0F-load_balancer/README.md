## Load Balancer

> This project sets up all three servers with Nginx and installs a load balancer. Resources: Software/Hardware Load Balancers, Load Balancer Algos, Intro to Load balance concepts, HTTP header, Redundancy, Webstack Debugging Intranet Page.

### Description of each file:

* 0-custom_http_response-header: Script configures second web server so it's identical to first web server. Adds to HTTP header too.

* 1-install_load_balancer: Script installs HAproxy on load balancer server; uses roundrobin.

* 2-puppet_custom_http_response-header.pp: Puppet manifest configuring a brand new Ubuntu server with Nginx so that its HTTP response contains a custom header.

### Environment
* Language: Bash scripts
* OS: Ubuntu 14.04 LTS
* Container: Docker
* Web Servers: Nginx; (338-lb-01: ssh ubuntu@104.196.27.36); (338-web-01: ssh ubuntu@35.229.54.225); (338-web-02: ssh ubuntu@35.231.225.251)
* Style guidelines: Shellscript for Bash

### Authors
Mohamed Hassan