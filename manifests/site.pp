node default {
}

node 'puppet' {
  include role::master_server
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}

node /^agent*/ {
  include role::app_server
}
