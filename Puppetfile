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

hmod 'acme', '0.0.20'
hmod 'backup', '0.0.28'
hmod 'configvault', '0.0.44'
hmod 'console', '0.0.15'
hmod 'cultivator', '0.0.15'
hmod 'disks', '0.0.30'
hmod 'docker', '0.0.35'
hmod 'homeassistant', '0.0.15'
hmod 'hostname', '0.1.18'
hmod 'goat', '0.0.14'
hmod 'grafana', '0.0.32'
hmod 'influxdb', '0.0.21'
hmod 'iptables', '0.0.16'
hmod 'keyboard', '0.0.14'
hmod 'kiosk', '0.0.49'
hmod 'kvm', '0.0.35'
hmod 'loki', '0.0.37'
hmod 'network', '0.1.32'
hmod 'nginx', '0.0.29'
hmod 'ntp', '0.0.13'
hmod 'openssh', '0.0.31'
hmod 'prometheus', '0.0.40'
hmod 'sdr', '0.0.15'
hmod 'serverless', '0.2.17'
hmod 'slackmastodon', '0.0.18'
hmod 'smb', '0.0.12'
hmod 'teslamate', '0.0.23'
hmod 'updates', '0.0.16'
hmod 'ups', '0.0.11'
hmod 'wh31e', '0.0.19'
hmod 'wireguard', '0.0.34'
hmod 'zwave', '0.0.13'

pmod 'firewall', '5.0.0'
pmod 'mount_core', '1.2.0'
pmod 'stdlib', '9.2.0'
pmod 'vcsrepo', '6.1.0'
