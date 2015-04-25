# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

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

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

github "boxen",       "3.7.0.5"
github "module-data", "0.0.4"
github "git",         "2.7.8"
github "osx",         "2.7.1"
github "osxoptions",  "0.0.13"
github "homebrew",    "1.9.6"
github "brewcask",    "0.0.5"
github "repository",  "2.3.0"
github "ruby",        "8.1.5"
github "stdlib",      "4.3.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "sudo",        "1.0.1"
github "xquartz",     "1.2.1"
github "packages",    "0.0.7"
github "rubyenv",     "0.0.6"
github "hostname",    "0.0.2"
github "fdesetup",    "0.0.9"
github "dotdotdot",   "0.0.7"
github "zsh",         "0.0.1"
github "loginitems",  "0.0.6"
