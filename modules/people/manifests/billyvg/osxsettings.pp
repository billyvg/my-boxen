class people::billyvg::osxsettings {
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_remote_control_ir_receiver

  include osx::dock::autohide
  # Default is right
  include osx::dock::position
  # Default is 36
  include osx::dock::icon_size

  include osx::finder::unhide_library
  include osx::no_network_dsstores
  include osx::software_update

  boxen::osx_defaults { 'Enable Tap to click':
    user   => $::boxen_user,
    domain => 'com.apple.mouse',
    key    => 'tapBehavior',
    type   => 'int',
    value  => 1
  }

  boxen::osx_defaults { 'Top Left Corner -> Start Screen Saver':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'wvous-tl-corner',
    type   => 'int',
    value  => 5,
    notify => Exec['killall Dock'];
  }
  boxen::osx_defaults { 'Top Left Corner -> Start Screen Saver (Modifier)':
    user   => $::boxen_user,
    domain => 'com.apple.dock',
    key    => 'wvous-tl-modifier',
    type   => 'int',
    value  => 0,
    notify => Exec['killall Dock'];
  }
}
