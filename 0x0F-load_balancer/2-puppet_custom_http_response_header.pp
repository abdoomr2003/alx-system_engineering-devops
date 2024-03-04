# Define a custom fact to get the hostname
Facter.add('nginx_hostname') do
  setcode 'hostname'
end

# Install nginx package
package { 'nginx':
  ensure => installed,
}

# Define custom header configuration file
file { '/etc/nginx/conf.d/custom_headers.conf':
  ensure  => present,
  content => "add_header X-Served-By ${::nginx_hostname};\n",
  notify  => Service['nginx'],
}

# Restart nginx service
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/nginx/conf.d/custom_headers.conf'],
}
