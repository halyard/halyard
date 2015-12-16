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

hmod 'boxen', '3.11.4'

hmod 'osx', '2.8.10'
hmod 'osxui', '0.0.12'
hmod 'icloud', '0.0.2'
hmod 'security', '0.0.5'
hmod 'sudoers', '0.1.4'
hmod 'network', '0.1.3'
hmod 'sysctl', '1.0.6'

hmod 'hostname', '0.0.5'
hmod 'dotfiles', '0.1.6'

hmod 'ruby', '8.5.7'
hmod 'rubyenv', '0.0.14'
hmod 'python', '3.0.12'
hmod 'pythonenv', '0.0.5'
hmod 'golang', '0.0.2'
hmod 'nodejs', '5.0.1'

hmod 'homebrew', '1.13.3'
hmod 'brewcask', '0.1.0'
hmod 'packages', '0.1.1'
hmod 'repository', '2.4.2'

hmod 'chrome', '0.1.0'
hmod 'iterm', '0.1.0'
hmod 'dropbox', '0.1.0'
hmod 'grandperspective', '0.1.0'
hmod 'spotify', '0.1.2'
hmod 'dash', '0.1.0'
hmod 'steam', '0.1.1'

hmod 'openssl', '0.1.0'
hmod 'ssh', '0.0.22'
hmod 'gpg', '0.1.4'
hmod 'zsh', '0.0.9'
hmod 'git', '2.8.3'
hmod 'vim', '0.1.2'
hmod 'spaarti', '0.1.2'
hmod 'keybase', '0.1.1'
hmod 'heroku', '0.1.0'
hmod 'mtr', '0.1.0'
hmod 'coreutils', '0.1.4'
hmod 'vagrant', '0.1.1'
hmod 'aws', '0.1.1'
