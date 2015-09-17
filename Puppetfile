# Shortcut for a module from halyard organization
def halyard(name, *args)
  params ||= args.last.is_a?(Hash) ? args.last : {}
  repo = params[:repo] || "halyard/puppet-#{name}"

  params[:path] ||= File.expand_path("~/src/#{repo}") if params[:dev]
  return mod(name, path: params[:path]) if params[:path]

  mod name, args.first, github_tarball: repo
end

halyard 'stdlib', '4.6.0', repo: 'puppetlabs/puppetlabs-stdlib'
halyard 'inifile', '1.2.0', repo: 'puppetlabs/puppetlabs-inifile'
halyard 'boxen', '3.11.0.akerl32'
halyard 'homebrew', '1.13.0.akerl4'
halyard 'brewcask', '0.0.6'
halyard 'packages', '0.0.19'
halyard 'repository', '2.4.1.akerl1'
halyard 'git', '2.7.9.akerl2'
halyard 'sudoers', '0.1.1.akerl10'
halyard 'hostname', '0.0.4'
halyard 'dotfiles', '0.0.24'
halyard 'osx', '2.8.0.akerl6'
halyard 'zsh', '0.0.5'
halyard 'ssh', '0.0.17'
halyard 'ruby', '8.5.2.akerl7'
halyard 'rubyenv', '0.0.11'
halyard 'spaarti', '0.0.10'
halyard 'iterm', '0.0.7'
halyard 'dropbox', '0.0.3'
halyard 'chrome', '0.0.3'
#halyard 'alfred', '0.0.5'
halyard 'osxui', '0.0.8'
halyard 'mtr', '0.0.1'
halyard 'coreutils', '0.0.3'
halyard 'python', '0.0.1'
halyard 'golang', '0.0.1'
halyard 'vagrant', '0.0.4'
#halyard 'onepassword', '0.0.4'
halyard 'totalspaces', '0.0.3'
halyard 'icloud', '0.0.1'
halyard 'grandperspective', '0.0.2'
halyard 'gpg', '0.0.6'
halyard 'heroku', '0.0.1'
halyard 'nodejs', '5.0.0.akerl1'
halyard 'keybase', '0.0.2'
halyard 'security', '0.0.3'
