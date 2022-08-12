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

hmod 'acme', '0.0.10'
hmod 'configvault', '0.0.33'
hmod 'console', '0.0.4'
hmod 'disks', '0.0.20'
hmod 'docker', '0.0.13'
hmod 'homeassistant', '0.0.2'
hmod 'hostname', '0.1.3'
hmod 'grafana', '0.0.11'
hmod 'influxdb', '0.0.10'
hmod 'iptables', '0.0.7'
hmod 'kiosk', '0.0.19'
hmod 'kvm', '0.0.26'
hmod 'loki', '0.0.19'
hmod 'network', '0.1.21'
hmod 'nginx', '0.0.20'
hmod 'ntp', '0.0.3'
hmod 'openssh', '0.0.18'
hmod 'prometheus', '0.0.21'
hmod 'sdr', '0.0.5'
hmod 'serverless', '0.2.5'
hmod 'smb', '0.0.3'
hmod 'updates', '0.0.5'
hmod 'ups', '0.0.2'
hmod 'wh31e', '0.0.9'
hmod 'wireguard', '0.0.25'
hmod 'zwave', '0.0.3'

pmod 'firewall', '3.5.0'
pmod 'mount_core', '1.1.0'
pmod 'stdlib', '8.1.0'
pmod 'vcsrepo', '5.0.0'
