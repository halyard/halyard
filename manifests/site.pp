require boxen::environment

Exec {
  group       => 'staff',
  logoutput   => on_failure,
  user        => $boxen_user,

  path => [
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
  require  => Class['homebrew']
}

Service {
  provider => ghlaunchd
}

Homebrew::Formula <| |> -> Package <| |>

node default {
  include git
  include packages
  include osxoptions
  include rubyenv
  include hostname
  include fdesetup

  file_line { 'add zsh to /etc/shells':
    path    => '/etc/shells',
    line    => "${boxen::config::homebrewdir}/bin/zsh",
    require => Package['zsh'],
  }

  osx_chsh { $::luser:
    shell   => "${boxen::config::homebrewdir}/bin/zsh",
    require => File_line['add zsh to /etc/shells'],
  }

  repository { 'dotdotdot repo':
    path    => "/Users/${::boxen_user}/...",
    source  => 'ingydotnet/...'
  }

  $dotdotdot_url = 'https://raw.githubusercontent.com/akerl/dotfiles/master/.dotdotdot.conf'
  exec { 'dotdotdot config':
    command => "/Users/${::boxen_user}/.../... conf ${dotdotdot_url}",
    creates => "/Users/${::boxen_user}/.../conf",
    require => Repository['dotdotdot repo']
  }

  exec { 'dotdotdot update':
    command => "/Users/${::boxen_user}/.../... update",
    require => Exec['dotdotdot config']
  }

  exec { 'dotdotdot install':
    command => "/Users/${::boxen_user}/.../... install",
    require => Exec['dotdotdot update']
  }
}
