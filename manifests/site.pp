node default {
  file {'/root/README':
    ensure => file,
    content => 'Ceci est un fichier lisezmoi',
  }
}
