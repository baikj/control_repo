node default {
}

node 'puppet' {
  include role::master_server
  
  file { '/root/README':
    ensure  =>  present,
    content =>  "Ceci est un fichier lisez-moi.\n",
  }
}

node /^client/ {
  include role::client_role
}

node /^web/ {
  include role::app_server
}

node 'mine2' {
  include role::minecraft_server
}
