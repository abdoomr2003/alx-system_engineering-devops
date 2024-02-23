# 1-install_a_package.pp

package { 'werkzeug':
  ensure   => '1.0.1',  # Replace with the appropriate version
  provider => pip3,
}

package { 'flask':
  ensure   => '2.1.0',
  provider => pip3,
  require  => Package['werkzeug'],
}

