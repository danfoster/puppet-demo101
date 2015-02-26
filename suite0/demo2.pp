class myfirstwebapp {
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
    content => "Have a nice day.\n",
    require => Package['httpd'],
  }
}

class motd {
  file { '/etc/motd' :
    ensure  => present,
    owner   => root,
    group   => root,
    content => "Have a nice day.\n",
  }
}

include myfirstwebapp
include motd
