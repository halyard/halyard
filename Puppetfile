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

hmod 'acme', '0.0.12'
hmod 'backup', '0.0.4'
hmod 'configvault', '0.0.35'
hmod 'console', '0.0.6'
hmod 'disks', '0.0.22'
hmod 'docker', '0.0.28'
hmod 'homeassistant', '0.0.6'
hmod 'hostname', '0.1.10'
hmod 'goat', '0.0.8'
hmod 'grafana', '0.0.16'
hmod 'influxdb', '0.0.12'
hmod 'iptables', '0.0.9'
hmod 'kiosk', '0.0.21'
hmod 'kvm', '0.0.28'
hmod 'loki', '0.0.22'
hmod 'network', '0.1.24'
hmod 'nginx', '0.0.22'
hmod 'ntp', '0.0.5'
hmod 'openssh', '0.0.21'
hmod 'prometheus', '0.0.27'
hmod 'sdr', '0.0.7'
hmod 'serverless', '0.2.9'
hmod 'smb', '0.0.5'
hmod 'teslamate', '0.0.10'
hmod 'updates', '0.0.7'
hmod 'ups', '0.0.4'
hmod 'wh31e', '0.0.11'
hmod 'wireguard', '0.0.27'
hmod 'zwave', '0.0.5'

pmod 'firewall', '3.5.0'
pmod 'mount_core', '1.1.0'
pmod 'stdlib', '8.1.0'
pmod 'vcsrepo', '5.0.0'
