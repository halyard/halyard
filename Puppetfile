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

hmod 'halyard', '0.0.32', dev: true
hmod 'hostname', '0.0.11', dev: true
hmod 'dotfiles', '0.2.7', dev: true
hmod 'masterless', '0.1.13', dev: true
hmod 'homebrew', '3.0.10', dev: true
hmod 'zsh', '0.1.1', dev: true
