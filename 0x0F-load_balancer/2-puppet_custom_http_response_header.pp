# 2-puppet_custom_http_response_header.pp
#  automate the task of creating a custom HTTP header response, but with Puppet
# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Define custom HTTP header configuration file
file { '/etc/nginx/conf.d/custom_headers.conf':
  ensure  => present,
  content => "add_header X-Served-By $hostname;\n",
  require => Package['nginx'],
}

# Restart Nginx service to apply changes
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/conf.d/custom_headers.conf'],
}
