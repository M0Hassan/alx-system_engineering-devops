### Firewall

> A firewall is a hardware or software security system. Two types of firesalls are network and host-based. The main function is to filter incoming and outgoing network traffic. telnet web-02.holberton.online 2222 lets you check if port 2222 is open to web-02. Resources: Wiki, Digital Ocean Sample Code on ufw.

### Description of waht each files shows:

* 0-block_all_incoming_traffic_but - installs a ufw firewall, Blocks incoming traffic except these TCP ports: 22 (SSH), 443 (HTTPS SSL), and 80 (HTTP).

* 100-port_forwarding - configures a server such that its firewall redirects port 8080/tcp to port 80/tcp

### Environment

* Language: Bash script
* OS: Ubuntu 14.04 LTS
* Web Server: installed firewall on web-01, web-02 running Nginx
* Load Balancer: installed firewall on lb-01 running HAProxy, SSL
* Style guidelines: Shellscript for Bash

### Authors
Mohamed Hassan