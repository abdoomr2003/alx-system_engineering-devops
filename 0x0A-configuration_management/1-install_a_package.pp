exec { 'install-flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  unless  => '/usr/bin/pip3 freeze | grep Flask==2.1.0',
  path    => ['/bin', '/usr/bin'],
}
