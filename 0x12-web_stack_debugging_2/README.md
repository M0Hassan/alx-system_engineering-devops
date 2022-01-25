### Web stack debugging #2
> "Although NGINXprocess is typically started with root privileges in order to listen on port 80 and 443, it can and should run as another non-root user in order to perform the web services... One of the best ways to reduce your exposure to attack when running a web server is to create a unique, unprivileged user and group for the server application." -Run NGINX Web Server as non-root user The root user is a superuser that can do anything on a Unix machine, the top administrator. Security wise, you must do everything that you can to prevent an attacker from logging in as root. With this in mind, s a good practice not to run your web servers as root (which is the default for most configurations) and instead run the process as the less privileged nginx user instead. This way, if a hacker does find a security issue that allows them to break-in to your server, the impact is limited by the permissions of the nginx user.

### Decription of what each file shows:

* 0-iamsomeonelese - script executesa as another user
* 1-run_nginx_as_nginx - script configures nginx to be running as nginx user and not root; listens on all active IPs on port 8080.

### Environment
* Language: Bash scripts
* OS: Ubuntu 14.04 LTS
* Web Server: Nginx
* Style guidelines: Shellscript for Bash

### Author
Mohamed Hassan