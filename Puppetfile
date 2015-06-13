# This file manages Puppet module dependencies.

# Shortcut for a module from halyard organization
def github(name, *args)
  options ||= args.last.is_a?(Hash) ? args.last : {}

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "halyard/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

github 'stdlib', '4.6.0', :repo => 'puppetlabs/puppetlabs-stdlib'
github 'inifile', '1.2.0', :repo => 'puppetlabs/puppetlabs-inifile'
github 'boxen', '3.11.0.akerl30'
github 'homebrew', '1.13.0.akerl4'
github 'brewcask', '0.0.6'
github 'packages', '0.0.11'
github 'repository', '2.4.1.akerl1'
github 'git', '2.7.9.akerl2'
github 'sudoers', '0.1.1.akerl8'
github 'hostname', '0.0.4'
github 'dotfiles', '0.0.18'
github 'osx', '2.8.0'
github 'zsh', '0.0.5'
github 'ssh', '0.0.7'
github 'ruby', '8.5.2.akerl7'
github 'rubyenv', '0.0.8'
github 'spaarti', '0.0.6'
github 'iterm', '0.0.7'
github 'dropbox', '0.0.3'
github 'chrome', '0.0.2'
github 'alfred', '0.0.5'
github 'osxui', '0.0.3'
github 'mtr', '0.0.1'
github 'coreutils', '0.0.1'
github 'python', '0.0.1'
github 'golang', '0.0.1'
github 'vagrant', '0.0.2'
