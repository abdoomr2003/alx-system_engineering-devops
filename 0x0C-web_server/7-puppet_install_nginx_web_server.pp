# Ensure Nginx package is installed
package { 'nginx':
  ensure => installed,
}

# Configure Nginx
file { '/etc/nginx/sites-available/default':
  ensure  => present,
  content => "
server {
  listen 80 default_server;
  listen [::]:80 default_server;

  root /var/www/html;
  index index.html index.htm index.nginx-debian.html;

  server_name _;

  location / {
    proxy_pass http://127.0.0.1:3000; # Redirect to desired location
  }

  location /redirect_me {
    return 301 https://example.com/new-location; # Redirect with 301 Moved Permanently
  }
}
",
  require => Package['nginx'],
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}
