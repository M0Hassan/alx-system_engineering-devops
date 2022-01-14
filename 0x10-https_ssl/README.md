## HTTPS SSL 

> HTTPS is a secure version of HTTP, used to encrypt all communication between the client and the website servers. When setting up HTTPS on our website, we should place the certificate on our website web server(s). Resources: SSL, Step-by-Step Guide I followed to create SSL certificate!, HTTP to HTTPS, sample Bash functions taking parameters

### Description of each file:

* 0-world_wide_web - After updating A records for www (to point to load balancer), lb-01, web-01, and web-02 on Gandi, running this script shows our subdomain and A records

* 1-haproxy_ssl_termination - After following the Step-by-Step Guide on Digital Ocean to install a certificate, this shows the most updated HAproxy config file. HAproxy is listening to port TCP 443 and accepts SSL traffic.

* 100-redirect_http_to_https - Shows updated HAproxy config file. Redirects HTTP traffic to HTTPS. HAproxy returns a 301 permanent redirect.

### Environment

* Language: Bash script
* OS: Ubuntu 14.04 LTS
* Web Servers: web-01, web-02 Nginx
* Load Balancer: lb-01, (www) HAproxy; Important folders /etc/letsencrypt/live/www.melissax.online/*
* Domain Name: from .tech domains
* Style guidelines: Shellscript for Bash

### Authors
Mohamed Hassan
