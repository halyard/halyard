# This file manages Puppet module dependencies.

# Shortcut for a module from halyard organization
def halyard(name, params = {})
  params[:repo] ||= "halyard/puppet-#{name}"
  params[:url] ||= "git://github.com/#{params[:repo]}"
  params[:version] ||= 'master'

  return dev_halyard(name, params) if params[:dev]
  mod name, version, git: params[:url], ref: params[:version]
end

def dev_halyard(name, params)
  params[:path] ||= File.expand_path("~/src/#{params[:repo]}")
  mod name, path: params[:path]
end

halyard 'stdlib', repo: 'puppetlabs/puppetlabs-stdlib', version: '4.6.0'
halyard 'inifile', repo: 'puppetlabs/puppetlabs-inifile', version: '1.2.0'
halyard 'boxen'
halyard 'homebrew'
halyard 'brewcask'
halyard 'packages'
halyard 'repository'
halyard 'git'
halyard 'sudoers'
halyard 'hostname'
halyard 'dotfiles'
halyard 'osx'
halyard 'zsh'
halyard 'ssh'
halyard 'ruby'
halyard 'rubyenv'
halyard 'spaarti'
halyard 'iterm'
halyard 'dropbox'
halyard 'chrome'
#halyard 'alfred'
halyard 'osxui'
halyard 'mtr'
halyard 'coreutils'
halyard 'python'
halyard 'golang'
halyard 'vagrant'
#halyard 'onepassword'
halyard 'totalspaces'
halyard 'icloud'
halyard 'grandperspective'
halyard 'gpg'
halyard 'heroku'
halyard 'nodejs'
halyard 'keybase'
halyard 'security'
