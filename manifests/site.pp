node default {
  user { 'admin':
    ensure => present,
  }
  
  file { '/root/README':
    ensure  =>  present,
    content => "mon ip address is {ipadress}",
  }
}
