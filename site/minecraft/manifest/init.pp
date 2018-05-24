class minecraft {
  file {'/opt/minecraft':
    ensure  =>  directory,
  }
  
  file {'/opt/minecraft/eula.txt':
    ensure  =>  file,
    content =>  'eula=true',
  }
  file {'/opt/minecraft/server.jar':
    ensure => file,
    source => 'puppet:///modules/minecraft/server.jar'
    }
    
  package {'default-jre':
    ensure  =>  present,
  }
  
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft.server'
    }
    
  service {'minecraft':
    ensure  =>  running,
    enable  =>  true,
  }
}
