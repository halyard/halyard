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

def pmod(name, version)
  hmod(name, version, org: 'puppetlabs')
end

hmod 'serverless', '0.2.5'
hmod 'hostname', '0.1.3'
hmod 'ntp', '0.0.3'
hmod 'network', '0.1.10'
hmod 'disks', '0.0.10'
hmod 'console', '0.0.2'
hmod 'openssh', '0.0.15'
hmod 'updates', '0.0.5'
hmod 'configvault', '0.0.24'
hmod 'kiosk', '0.0.12'
hmod 'sdr', '0.0.5'
hmod 'wh31e', '0.0.9'
hmod 'kvm', '0.0.2'

pmod 'mount_providers', '2.0.1'
pmod 'vcsrepo', '5.0.0'
