file { 'config':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  content => 'IdentityFile ~/.ssh/school
              PasswordAuthentication no'
}
