# This file manages Puppet module dependencies.

# Shortcut for a module from halyard organization
def github(name, *args)
  options ||= args.last.is_a?(Hash) ? args.last : {}
  options[:repo] ||= "halyard/puppet-#{name}"

  options[:path] ||= File.expand_path("~/src/halyard/#{repo}") if options[:dev]
  return mod(name, path: options[:path]) if options[:path]

  mod name, args.first, :github_tarball => options[:repo]
end

github 'stdlib', '4.6.0', :repo => 'puppetlabs/puppetlabs-stdlib'
github 'inifile', '1.2.0', :repo => 'puppetlabs/puppetlabs-inifile'
github 'boxen', '3.11.0.akerl32'
github 'homebrew', '1.13.0.akerl4'
github 'brewcask', '0.0.6'
github 'packages', '0.0.18'
github 'repository', '2.4.1.akerl1'
github 'git', '2.7.9.akerl2'
github 'sudoers', '0.1.1.akerl10'
github 'hostname', '0.0.4'
github 'dotfiles', '0.0.21'
github 'osx', '2.8.0.akerl3'
github 'zsh', '0.0.5'
github 'ssh', '0.0.8'
github 'ruby', '8.5.2.akerl7'
github 'rubyenv', '0.0.10'
github 'spaarti', '0.0.10'
github 'iterm', '0.0.7'
github 'dropbox', '0.0.3', dev: true
github 'chrome', '0.0.2'
github 'alfred', '0.0.5', dev: true
github 'osxui', '0.0.7'
github 'mtr', '0.0.1'
github 'coreutils', '0.0.2'
github 'python', '0.0.1'
github 'golang', '0.0.1'
github 'vagrant', '0.0.4'
github 'onepassword', '0.0.3'
github 'totalspaces', '0.0.3'
github 'icloud', '0.0.1'
github 'grandperspective', '0.0.2'
github 'gpg', '0.0.2'
github 'heroku', '0.0.1'
github 'nodejs', '5.0.0.akerl1'
github 'keybase', '0.0.2'
github 'security', '0.0.2'
