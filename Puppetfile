# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= args.last.is_a?(Hash) ? args.last : {}

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

github "boxen", "3.6.2"
github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"
github "git",         "2.5.0"
github "osx",         "2.7.1"
github "osxoptions",  "0.0.6", :repo => "halyard/puppet-osxoptions"
github "homebrew",    "1.9.4"
github "brewcask",    "0.0.5", :repo => "halyard/puppet-brewcask"
github "repository",  "2.3.0"
github "ruby",        "8.1.2"
github "stdlib",      "4.3.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "sudo",        "1.0.1", :repo => "halyard/puppet-sudo"
github "xquartz",     "1.1.1"
github "packages",    "0.0.2", :repo => "halyard/puppet-packages"
github "rubyenv",     "0.0.1", :repo => "halyard/puppet-rubyenv"
github "hostname",    "0.0.2", :repo => "halyard/puppet-hostname"
github "fdesetup",    "0.0.9", :repo => "halyard/puppet-fdesetup"
github "dotdotdot",   "0.0.7", :repo => "halyard/puppet-dotdotdot"
github "zsh",         "0.0.1", :repo => "halyard/puppet-zsh"
