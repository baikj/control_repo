node default {
  user { 'admin':
    ensure => present,
  }
  
  file { '/root/README':
    ensure  =>  present,
    content => "Mon adresse IP est ${ipaddress}\n",
  }
}
