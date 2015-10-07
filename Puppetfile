forge 'https://forge.puppetlabs.com'

def hmod(name, version = nil, params = {})
  repo = params[:repo] || "halyard-#{name}"
  params[:path] ||= File.expand_path("~/src/#{repo}") if params[:dev]
  return mod(repo, path: params[:path]) if params[:path]
  mod repo, version
end

hmod 'osx'
hmod 'osxui'

def old_helper(name, *args)
  params ||= args.last.is_a?(Hash) ? args.last : {}
  repo = params[:repo] || "halyard/puppet-#{name}"

  params[:path] ||= File.expand_path("~/src/#{repo}") if params[:dev]
  return mod(name, path: params[:path]) if params[:path]

  mod name, args.first, github_tarball: repo
end

#old_helper 'stdlib', '4.6.0', repo: 'puppetlabs/puppetlabs-stdlib'
#old_helper 'inifile', '1.2.0', repo: 'puppetlabs/puppetlabs-inifile'
old_helper 'boxen', '3.11.0.akerl32'
old_helper 'homebrew', '1.13.0.akerl4'
old_helper 'brewcask', '0.0.6'
old_helper 'packages', '0.0.19'
old_helper 'repository', '2.4.1.akerl1'
old_helper 'git', '2.7.9.akerl2'
old_helper 'sudoers', '0.1.1.akerl10'
old_helper 'hostname', '0.0.4'
old_helper 'dotfiles', '0.0.24'
old_helper 'zsh', '0.0.7'
old_helper 'ssh', '0.0.17'
old_helper 'ruby', '8.5.2.akerl7'
old_helper 'rubyenv', '0.0.11'
old_helper 'spaarti', '0.0.10'
old_helper 'iterm', '0.0.7'
old_helper 'dropbox', '0.0.3'
old_helper 'chrome', '0.0.3'
old_helper 'mtr', '0.0.1'
old_helper 'coreutils', '0.0.3'
old_helper 'python', '0.0.1'
old_helper 'golang', '0.0.1'
old_helper 'vagrant', '0.0.4'
old_helper 'icloud', '0.0.1'
old_helper 'grandperspective', '0.0.2'
old_helper 'gpg', '0.0.6'
old_helper 'heroku', '0.0.1'
old_helper 'nodejs', '5.0.0.akerl1'
old_helper 'keybase', '0.0.2'
old_helper 'security', '0.0.3'
