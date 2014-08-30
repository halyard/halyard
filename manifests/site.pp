require boxen::environment
require homebrew
require brewcask

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    '/usr/local/bin',
    '/usr/local/sbin',
    '/usr/bin',
    '/bin',
    '/usr/sbin',
    '/sbin'
  ],

  environment => [
    "HOMEBREW_CACHE=${homebrew::config::cachedir}",
    "HOME=/Users/${::boxen_user}"
  ]
}

File {
  group => 'staff',
  owner => $boxen_user
}

Package {
  provider => homebrew,
  require  => Class['homebrew']
}

Repository {
  provider => git,
  extra    => [
    '--recurse-submodules'
  ],
  require  => File["${boxen::config::bindir}/boxen-git-credential"],
  config   => {
    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
  }
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  include git
  include ruby

  homebrew::tap { 'homebrew/dupes': }
  homebrew::tap { 'halyard/formulae': }
  homebrew::tap { 'halyard/casks': }

  ruby::version { '1.8.7':
    require => Package['apple-gcc42']
  }
  ruby::version { '1.9.3': }
  ruby::version { '2.0.0': }
  ruby::version { '2.1.0': }
  ruby::version { '2.1.1': }
  ruby::version { '2.1.2': }

  package {
    [
      'ack',
      'findutils',
      'gnu-tar',
      'git'
    ]:
  }

  package {
    [
      'apple-gcc42'
    ]:
    require => Homebrew::Tap['homebrew/dupes']
  }

  package { 'halyard/casks/iterm2': provider => 'brewcask' }
}
