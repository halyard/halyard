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

Package {
  provider => homebrew,
  require  => Class['homebrew'],
  install_options => ['--build-from-source']
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
    delay => 10
  }

  class { 'osx::global::key_repeat_rate':
    rate => 2
  }

  class { 'osx::dock::icon_size':
    size => 20
  }

  class { 'osx::dock::hot_corners':
    top_right   => 'Start Screen Saver',
    bottom_left => 'Dashboard'
  }

  homebrew::tap { 'homebrew/dupes': }
  homebrew::tap { 'halyard/formulae': }
  homebrew::tap { 'halyard/casks': }

  ruby::version { '1.8.7':
    require     => Package['apple-gcc42']
  }
  ruby::version { '1.9.3': }
  ruby::version { '2.0.0': }
  ruby::version { '2.1.0': }
  ruby::version { '2.1.1': }
  ruby::version { '2.1.2': }
  class { 'ruby::global':
    version => '2.1.2'
  }

  package {
    [
      'ack',
      'arping',
      'bash',
      'bash-completion',
      'coreutils',
      'cpanminus',
      'ctags',
      'findutils',
      'gawk',
      'git',
      'gnupg',
      'gnupg2',
      'gnuplot',
      'gnutls',
      'gnu-tar',
      'go',
      'gpg-agent',
      'gpgme',
      'htop-osx',
      'ipmitool',
      'mutt',
      'mysql',
      'netcat',
      'nmap',
      'node',
      'openssl',
      'pinentry',
      'pwgen',
      'python',
      'python3',
      'qrencode',
      'readline',
      'redis',
      'siege',
      'socat',
      'sqlite',
      'swig',
      'tmux',
      'tree',
      'vim',
      'watch',
      'weechat',
      'wget',
      'xz',
      'yuicompressor',
      'zsh',
      'zsh-completions'
    ]:
  }

  package { 'mtr':
    install_options => [
      '--build-from-source',
      '--no-gtk+'
    ]
  }

  file { 'mtr-binary':
    path    => "${boxen::config::home}/homebrew/sbin/mtr",
    links   => 'follow',
    owner   => 'root',
    group   => 'wheel',
    mode    => '4755',
    require => Package['mtr']
  }

  package {
    [
      'halyard/formulae/encfs',
      'halyard/formulae/openssh',
      'halyard/formulae/ipmiutil'
    ]:
    require => [
      Homebrew::Tap['halyard/formulae'],
      Package['halyard/casks/osxfuse']
    ]
  }

  package {
    [
      'apple-gcc42',
      'grep',
      'screen'
    ]:
    require => Homebrew::Tap['homebrew/dupes']
  }

  package {
    [
      'halyard/casks/airmail-beta',
      'halyard/casks/alfred',
      'halyard/casks/asepsis',
      'halyard/casks/bartender',
      'halyard/casks/bettertouchtool',
      'halyard/casks/cert-quicklook',
      'halyard/casks/copy',
      'halyard/casks/dropbox',
      'halyard/casks/firefox-beta',
      'halyard/casks/flux',
      'halyard/casks/font-meslo-lg-for-powerline',
      'halyard/casks/google-chrome-dev',
      'halyard/casks/google-drive',
      'halyard/casks/gpgtools',
      'halyard/casks/grandperspective',
      'halyard/casks/hyperspace',
      'halyard/casks/jre',
      'halyard/casks/istat-menus',
      'halyard/casks/iterm2-nightly',
      'halyard/casks/lingon-x',
      'halyard/casks/little-snitch-nightly',
      'halyard/casks/luxdelux',
      'halyard/casks/navicat-for-mysql',
      'halyard/casks/onepassword-beta',
      'halyard/casks/openoffice',
      'halyard/casks/osxfuse',
      'halyard/casks/quicklook-json',
      'halyard/casks/rstudio',
      'halyard/casks/sequelpro',
      'halyard/casks/textexpander',
      'halyard/casks/the-unarchiver',
      'halyard/casks/thunderbird-beta',
      'halyard/casks/totalfinder',
      'halyard/casks/totalspaces',
      'halyard/casks/transmission',
      'halyard/casks/vagrant',
      'halyard/casks/virtualbox-ext-pack',
      'halyard/casks/virtualbox',
      'halyard/casks/vlc',
      'halyard/casks/xee'
    ]:
    provider    => 'brewcask',
    require     => [
      Sudoers['brewcask-pkginstaller'],
      Package['grep']
    ]
  }

  sudoers { 'brewcask-pkginstaller':
    users       => $::boxen_user,
    hosts       => 'ALL',
    commands    => [
      '(ALL) NOPASSWD:SETENV: /usr/sbin/installer',
    ],
    type        => 'user_spec',
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
