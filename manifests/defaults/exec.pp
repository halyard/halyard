Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => lookup('user', String[1]),
  path        => [
    '/usr/local/bin',
    '/usr/local/sbin',
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ]
}
