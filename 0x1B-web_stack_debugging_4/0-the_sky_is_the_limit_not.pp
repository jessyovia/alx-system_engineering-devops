# Ensure Nginx is installed
package { 'nginx':
  ensure => installed,
}

# Ensure Nginx service is running
service { 'nginx':
  ensure => running,
}

# Ensure Nginx configuration file is present
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
server {
    listen 80 default_server;
    listen [::]:80 default_server ipv6only=on;

    root /usr/share/nginx/html;
    index index.html index.htm;

    server_name localhost;

    location / {
        try_files $uri $uri/ =404;
    }
}
  ",
  notify => Service['nginx'],
}
