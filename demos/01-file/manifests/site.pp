file { '/etc/motd' :
  ensure  => present,
  owner   => root,
  group   => root,
  content => "Have a nice day.\n",
}
  
