class myfirstwebapp (
  $daystate = 'froody'
) {

  package { 'httpd':
    ensure        => present,
    allow_virtual => no
  }

  service { 'httpd':
    ensure  => running,
    require => Package['httpd']
  }

  file { '/var/www/html/index.html':
    ensure  => present,
    owner   => apache,
    group   => apache,
    content => template('myfirstwebapp/index.html.erb'),
    require => Package['httpd'],
  }
}
