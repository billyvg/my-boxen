class people::billyvg {
  notify { 'class people::billyvg declared': }

  include people::billyvg::applications
  include people::billyvg::development
  include people::billyvg::osxsettings

}
