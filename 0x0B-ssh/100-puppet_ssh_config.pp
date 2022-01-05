# sets up a client SSH configuration file so that we can connect to a server without using a password
include stdlib
file_line { 'Declare identity file':
  ensure  => present, 
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/holberton',
}

file_line { 'Turn off passwd auth':
  ensure  => present,	
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
}