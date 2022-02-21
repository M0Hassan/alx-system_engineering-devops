## 0x1B. Web stack debugging #4

### Description
> We are testing how well our web server setup featuring Nginx is doing under pressure and it turns out it’s not doing well: we are getting a huge amount of failed requests. For the benchmarking, we are using ApacheBench which is a quite popular tool in the industry. It allows you to simulate HTTP requests to a web server. In this case, I will make 2000 requests to my server with 100 requests at a time. We can see that 943 requests failed.

### How to debug:
* Run ApacheBench to simulate requests to server ab -c 100 -n 2000 localhost/
* Look on /var/log/nginx/error.log. for errors and find "accept4() failed (24: Too many open files)"
* Google error message and try different solutions pertaining to resetting max files open limit 1 2
* Ultimate solution that solved the issue is modifying limit in /etc/default/nginx file
* Execute puppet script to automate solving issue across magnitude of servers puppet apply [0-filename]

### Environment
* Language: Puppet config script
* OS: Ubuntu 14.04 LTS
* Web Server: Nginx on Docker container
* Style guidelines: Puppet-lint

### Authors
Mohamed Hassan
