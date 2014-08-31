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
  include ruby
  include packages

  include osx::global::disable_key_press_and_hold
  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::disable_autocorrect
  include osx::global::tap_to_click
  include osx::global::enable_keyboard_control_access

  include osx::dock::autohide
  include osx::dock::disable

  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::enable_quicklook_text_selection

  include osx::no_network_dsstores
  include osx::keyboard::capslock_to_control

  include osx::software_update

  class { 'osx::global::key_repeat_delay':
    delay => 0
  }

  class { 'osx::global::key_repeat_rate':
    rate => 10
  }

  class { 'osx::dock::hot_corners':
    top_right   => 'Start Screen Saver',
    bottom_left => 'Dashboard'
  }

  ruby::version { '1.8.7':
    require     => Package['homebrew/dupes/apple-gcc42']
  }
  ruby::version { '1.9.3': }
  ruby::version { '2.0.0': }
  ruby::version { '2.1.0': }
  ruby::version { '2.1.1': }
  ruby::version { '2.1.2': }
  class { 'ruby::global':
    version => '2.1.2'
  }

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
