require homebrew
require brewcask

Package {
  provider => homebrew,
  require  => Class['homebrew'],
  install_options => ['--build-from-source']
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
    'homebrew/dupes/apple-gcc42',
    'homebrew/dupes/grep',
    'homebrew/dupes/screen'
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

