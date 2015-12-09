node default {
  include osxui
  include icloud
  include security
  include network

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
  include spotify
  include dash

  include openssl
  include ssh
  include gpg
  include zsh
  include git
  include vim
  include spaarti
  include keybase
  include heroku
  include mtr
  include coreutils
  include vagrant
  include aws

  hiera_include('classes', [])
}
