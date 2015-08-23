# This file manages Puppet module dependencies.

# Shortcut for a module from halyard organization
def halyard(name, *args)
  params ||= args.last.is_a?(Hash) ? args.pop : {}
  repo = params[:repo] || "halyard/puppet-#{name}"

  params[:path] ||= File.expand_path("~/src/#{repo}") if params[:dev]
  return mod(name, path: params[:path]) if params[:path]

  mod name, args.first, github_tarball: repo
end

halyard 'stdlib', '4.6.0', repo: 'puppetlabs/puppetlabs-stdlib'
halyard 'inifile', '1.2.0', repo: 'puppetlabs/puppetlabs-inifile'
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
