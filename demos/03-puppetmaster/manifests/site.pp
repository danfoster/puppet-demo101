node /^client/ {
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
    content => "Have a nice day.\npuppetmaster mode\n",
    require => Package['httpd'],
  }

  file { '/etc/motd' :
    ensure  => present,
    owner   => root,
    group   => root,
    content => "Have a nice day.\n",
  }
}

node default {
  file { '/etc/motd' :
    ensure  => present,
    owner   => root,
    group   => root,
    content => "Have a nice day.\n",
  }
}
