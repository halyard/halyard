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

hmod 'acme', '0.0.15'
hmod 'backup', '0.0.19'
hmod 'configvault', '0.0.37'
hmod 'console', '0.0.8'
hmod 'disks', '0.0.24'
hmod 'docker', '0.0.30'
hmod 'homeassistant', '0.0.10'
hmod 'hostname', '0.1.12'
hmod 'goat', '0.0.9'
hmod 'grafana', '0.0.22'
hmod 'influxdb', '0.0.16'
hmod 'iptables', '0.0.11'
hmod 'kiosk', '0.0.26'
hmod 'kvm', '0.0.30'
hmod 'loki', '0.0.27'
hmod 'network', '0.1.26'
hmod 'nginx', '0.0.24'
hmod 'ntp', '0.0.7'
hmod 'openssh', '0.0.23'
hmod 'prometheus', '0.0.32'
hmod 'sdr', '0.0.10'
hmod 'serverless', '0.2.11'
hmod 'smb', '0.0.7'
hmod 'teslamate', '0.0.18'
hmod 'updates', '0.0.10'
hmod 'ups', '0.0.6'
hmod 'wh31e', '0.0.15'
hmod 'wireguard', '0.0.29'
hmod 'zwave', '0.0.8'

pmod 'firewall', '3.5.0'
pmod 'mount_core', '1.1.0'
pmod 'stdlib', '8.1.0'
pmod 'vcsrepo', '5.0.0'
