forge 'https://forgeapi.puppetlabs.com'

ORG = 'halyard'
DEV_PATH = "~/src/#{ORG}/puppet-%s"

def hmod(name, version = nil, params = {})
  org = params[:org] || ORG
  repo = params[:repo] || "#{org}-#{name}"
  params[:path] ||= File.expand_path(DEV_PATH % name) if params[:dev]
  return mod(repo, path: params[:path]) if params[:path]
  mod repo, version
end

hmod 'boxen', '3.11.3'

hmod 'osx', '2.8.5'
hmod 'osxui', '0.0.10'
hmod 'icloud', '0.0.2'
hmod 'security', '0.0.4'
hmod 'sudoers', '0.1.2'

hmod 'hostname', '0.0.5'
hmod 'dotfiles', '0.1.0'

hmod 'ruby', '8.5.3'
hmod 'rubyenv', '0.0.12'
hmod 'python', '0.1.0'
hmod 'golang', '0.0.2'
hmod 'nodejs', '5.0.1'

hmod 'homebrew', '1.13.1'
hmod 'brewcask', '0.1.0'
hmod 'packages', '0.1.0'
hmod 'repository', '2.4.2'

hmod 'chrome', '0.1.0'
hmod 'iterm', '0.1.0'
hmod 'dropbox', '0.1.0'
hmod 'grandperspective', '0.1.0'

hmod 'ssh', '0.0.18'
hmod 'gpg', '0.1.0'
hmod 'zsh', '0.0.8'
hmod 'git', '2.8.2'
hmod 'spaarti', '0.1.0'
hmod 'keybase', '0.1.0'
hmod 'heroku', '0.1.0'
hmod 'mtr', '0.1.0'
hmod 'coreutils', '0.1.0'
hmod 'vagrant', '0.1.0'
