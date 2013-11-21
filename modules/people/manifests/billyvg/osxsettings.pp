class people::billyvg::osxsettings {
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::dock::autohide
  include osx::dock::position
  include osx::finder::unhide_library
  include osx::no_network_dsstores
  include osx::software_update

  class { 'osx::dock::icon_size': 
    size => 36
  }
}
