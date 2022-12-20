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

hmod 'acme', '0.0.16'
hmod 'backup', '0.0.20'
hmod 'configvault', '0.0.38'
hmod 'console', '0.0.9'
hmod 'disks', '0.0.25'
hmod 'docker', '0.0.31'
hmod 'homeassistant', '0.0.11'
hmod 'hostname', '0.1.13'
hmod 'goat', '0.0.10'
hmod 'grafana', '0.0.23'
hmod 'influxdb', '0.0.17'
hmod 'iptables', '0.0.12'
hmod 'kiosk', '0.0.27'
hmod 'kvm', '0.0.31'
hmod 'loki', '0.0.28'
hmod 'network', '0.1.27'
hmod 'nginx', '0.0.25'
hmod 'ntp', '0.0.8'
hmod 'openssh', '0.0.24'
hmod 'prometheus', '0.0.33'
hmod 'sdr', '0.0.11'
hmod 'serverless', '0.2.12'
hmod 'slackmastodon', '0.0.6'
hmod 'smb', '0.0.8'
hmod 'teslamate', '0.0.19'
hmod 'updates', '0.0.11'
hmod 'ups', '0.0.7'
hmod 'wh31e', '0.0.15'
hmod 'wireguard', '0.0.30'
hmod 'zwave', '0.0.9'

pmod 'firewall', '3.5.0'
pmod 'mount_core', '1.1.0'
pmod 'stdlib', '8.1.0'
pmod 'vcsrepo', '5.0.0'
