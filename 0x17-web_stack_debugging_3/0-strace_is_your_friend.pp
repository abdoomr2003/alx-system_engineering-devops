# 0-strace_is_your_friend.pp

# Ensure Apache package is installed
package { 'apache2':
  ensure => installed,
}

# Ensure Apache service is running
service { 'apache2':
  ensure => running,
}

# Replace configuration file with fixed version
file { '/etc/apache2/apache2.conf':
  ensure  => file,
  content => template('apache/apache2.conf.erb'),
  require => Package['apache2'],
  notify  => Service['apache2'],
}
