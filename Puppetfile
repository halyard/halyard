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

hmod 'serverless', '0.2.5'
hmod 'hostname', '0.1.1'
hmod 'openssh', '0.0.11'
hmod 'pacman', '0.0.2'
hmod 'fancontrol', '0.0.6'
hmod 'ntp', '0.0.1'
