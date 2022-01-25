### MySQL Configuration
> SQL is installed on both Nginx web servers and configured so that the first is a Master and the second is a Slave.

### Description of each file:

* 4-mysql_configuration_primary/ 4-mysql_configuration_replica - shows the sql config files for both webservers.
* 5-mysql_backup - shows a bash script that creates a compressed archive of the database so that we're able to have backup in case of a flood, power outage, etc.

### Environment

* Language: Bash scripts
* OS: Ubuntu 14.04 LTS
* Web Servers: (2) Nginx [35.229.54.225] [35.231.225.251], (1) HAproxy load balancer [104.196.27.36]
* Style guidelines: Shellscript for Bash


### Authors
Mohamed Hassan
