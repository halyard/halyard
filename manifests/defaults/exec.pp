include homebrew

Exec {
  group     => 'staff',
  user      => $::id,
  logoutput => on_failure,
  path      => [
    '/usr/local/bin',
    '/usr/local/sbin',
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ]
}
