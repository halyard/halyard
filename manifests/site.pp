require boxen::environment
require homebrew

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
    "/Users/${::boxen_user}/.bin",
    "${boxen::config::home}/rbenv/shims",
    "${boxen::config::home}/rbenv/bin",
    "${boxen::config::home}/rbenv/plugins/ruby-build/bin",
    "${boxen::config::home}/homebrew/bin",
    "${boxen::config::home}/homebrew/sbin",
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

Package {
  provider => homebrew,
  require  => Class['homebrew'],
  install_options => ['--build-from-source']
}

node default {
  include osxui
  include icloud
  include security

  include hostname
  include dotfiles

  include rubyenv
  include pythonenv
  include golang

  include packages

  include chrome
  include iterm
  include dropbox
  include grandperspective

  include ssh
  include gpg
  include zsh
  include git
  include spaarti
  include keybase
  include heroku
  include mtr
  include coreutils
  include vagrant
}
