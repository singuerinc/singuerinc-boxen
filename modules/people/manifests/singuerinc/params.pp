class people::singuerinc::params {
  # $::luser and $::boxen_srcdir come from Boxen's custom facts
  $my_username  = $::luser
  $my_homedir   = "/Users/${people::singuerinc::params::my_username}"
  $my_sourcedir = $::boxen_srcdir
}