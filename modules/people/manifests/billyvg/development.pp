class people::billyvg::development {
  $home = "/Users/${::boxen_user}"

  include ctags

  repository { 'ohmyzsh':
    source => 'robbyrussell/oh-my-zsh',
    path   => "${home}/.oh-my-zsh"
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

  repository { 'dotfiles':
    source  => 'billyvg/dotfiles',
    path    => "${home}/.dotfiles",
    require => [
      Class["janus"],
      Repository["ohmyzsh"],
      Repository["scm breeze"]
    ]
  }
  ~> exec { 'Link dotfiles':
    command => "${home}/.dotfiles/post-commit"
  }

  repository { 'vundle':
    source  => 'gmarik/vundle',
    path    => "${home}/.janus/bundle/vundle",
    require => [
      Package["vim"],
      Package["cmake"]
    ]
  }
  #~> exec { 'Install vim Bundles via Vundle':
      #command => "${boxen::config::home}/homebrew/bin/vim +BundleInstall +qall"
  #}
  #~> exec { 'Compile YouCompleteMe':
      #command => "${home}/.janus/bundle/YouCompleteMe/install.sh --clang-interpreter"
  #}

  git::config::global { 'user.email':
    value => 'billyvg@gmail.com'
  }
  git::config::global { 'user.name':
    value => 'Billy Vong'
  }

  repository { 'tmux OSX Pasteboard':
    source => 'ChrisJohnsen/tmux-MacOSX-pasteboard',
    path   => '/tmp/pasteboard'
  }
  ~> exec { 'Build pasteboard':
    command => 'make reattach-to-user-namespace',
    cwd     => '/tmp/pasteboard'
  }
  ~> exec { 'Install pasteboard':
    command => 'cp reattach-to-user-namespace /usr/bin/',
    cwd     => '/tmp/pasteboard',
    user    => root
  }

  package { 'redis':
  }

  ruby::gem { 'knife-solo':
    gem  => 'knife-solo',
    ruby => '2.0.0'
  }

}
