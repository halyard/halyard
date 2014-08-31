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
    ensure => 'latest'
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
    provider => 'brewcask',
    require => [
      Sudoers['brewcask-pkginstaller'],
      Package['grep']
    ]
  }

  sudoers { 'brewcask-pkginstaller':
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) NOPASSWD:SETENV: /usr/sbin/installer',
    ],
    type     => 'user_spec',
  }
}
