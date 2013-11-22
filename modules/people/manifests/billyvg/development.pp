class people::billyvg::development {
  $home = "/Users/${::boxen_user}"

  repository { 'ohmyzsh':
    source => 'robbyrussell/oh-my-zsh',
    path   => "${home}/.oh-my-zsh",
    require => [
      Package['zsh']
    ]
  }

  repository { 'scm breeze':
    source => 'ndbroadbent/scm_breeze',
    path   => "${home}/.scm_breeze"
  }
  ~> exec { 'Install scm breeze':
    command     => "${home}/.scm_breeze/install.sh",
    environment => [
      "HOME=${home}",
    ]
  }
  
}
