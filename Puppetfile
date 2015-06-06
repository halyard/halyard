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

github 'boxen', '3.11.0.akerl9'
github 'module-data', '0.0.4'
github 'stdlib', '4.3.2', :repo => 'puppetlabs/puppetlabs-stdlib'
github 'inifile', '1.1.1', :repo => 'puppetlabs/puppetlabs-inifile'

