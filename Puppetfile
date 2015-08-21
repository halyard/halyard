# This file manages Puppet module dependencies.

# Shortcut for a module from halyard organization
def mod(name, *args)
  params ||= args.last.is_a?(Hash) ? args.last : {}
  repo = options[:repo] || "halyard/puppet-#{name}"

  options[:path] ||= File.expand_path("~/src/halyard/#{repo}") if options[:dev]
  return mod(name, path: options[:path]) if options[:path]

  mod name, args.first, github_tarball: repo
end

mod 'stdlib', '4.6.0', repo: 'puppetlabs/puppetlabs-stdlib'
mod 'inifile', '1.2.0', repo: 'puppetlabs/puppetlabs-inifile'
mod 'boxen', '3.11.0.akerl32'
mod 'homebrew', '1.13.0.akerl4'
mod 'brewcask', '0.0.6'
mod 'packages', '0.0.18'
mod 'repository', '2.4.1.akerl1'
mod 'git', '2.7.9.akerl2'
mod 'sudoers', '0.1.1.akerl10'
mod 'hostname', '0.0.4'
mod 'dotfiles', '0.0.21'
mod 'osx', '2.8.0.akerl3'
mod 'zsh', '0.0.5'
mod 'ssh', '0.0.8'
mod 'ruby', '8.5.2.akerl7'
mod 'rubyenv', '0.0.10'
mod 'spaarti', '0.0.10'
mod 'iterm', '0.0.7'
mod 'dropbox', '0.0.3', dev: true
mod 'chrome', '0.0.2'
mod 'alfred', '0.0.5', dev: true
mod 'osxui', '0.0.7'
mod 'mtr', '0.0.1'
mod 'coreutils', '0.0.2'
mod 'python', '0.0.1'
mod 'golang', '0.0.1'
mod 'vagrant', '0.0.4'
mod 'onepassword', '0.0.3'
mod 'totalspaces', '0.0.3'
mod 'icloud', '0.0.1'
mod 'grandperspective', '0.0.2'
mod 'gpg', '0.0.2'
mod 'heroku', '0.0.1'
mod 'nodejs', '5.0.0.akerl1'
mod 'keybase', '0.0.2'
mod 'security', '0.0.2'
