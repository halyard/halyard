Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $user,
  path        => [
    '/usr/local/bin',
    '/usr/local/sbin',
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ]
}
