class people::billyvg::applications {
  include macvim
  include vlc
  include onepassword
  include droplr
  include janus

  package { 'Smoothmouse':
    source   => 'http://mmo.me/SmoothMouse1.0.9.zip',
    provider => 'compressed_pkg'
  }
}
