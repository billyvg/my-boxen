class people::billyvg::applications {
  include firefox
  include macvim
  include vlc
  include onepassword
  include droplr
  include janus
  include spotify
  include divvy

  package { 'Smoothmouse':
    source   => 'http://mmo.me/SmoothMouse1.0.9.zip',
    provider => 'compressed_pkg'
  }

  package { 'evernote':
    provider => 'appdmg_eula',
    source   => 'http://cdn1.evernote.com/mac/release/Evernote_401298.dmg'
  }

}
