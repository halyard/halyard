forge 'https://forgeapi.puppetlabs.com'

ORG = 'halyard'
DEV_PATH = "~#{ENV['SUDO_USER']}/src/#{ORG}/puppet-%s"

def hmod(name, version = nil, params = {})
  org = params[:org] || ORG
  repo = params[:repo] || "#{org}-#{name}"
  params[:path] ||= File.expand_path(DEV_PATH % name) if params[:dev]
  return mod(repo, path: params[:path]) if params[:path]
  mod repo, version
end

hmod 'halyard', '0.0.23'
hmod 'homebrew', '3.0.5'
hmod 'zsh', '0.1.1'
hmod 'hostname', '0.0.11'
hmod 'dotfiles', '0.2.2'
hmod 'masterless', '0.1.13'
hmod 'asdf', '0.0.12'
