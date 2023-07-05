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

hmod 'acme', '0.0.19'
hmod 'backup', '0.0.27'
hmod 'configvault', '0.0.43'
hmod 'console', '0.0.14'
hmod 'cultivator', '0.0.11'
hmod 'disks', '0.0.29'
hmod 'docker', '0.0.34'
hmod 'homeassistant', '0.0.14'
hmod 'hostname', '0.1.17'
hmod 'goat', '0.0.13'
hmod 'grafana', '0.0.31'
hmod 'influxdb', '0.0.20'
hmod 'iptables', '0.0.15'
hmod 'keyboard', '0.0.13'
hmod 'kiosk', '0.0.48'
hmod 'kvm', '0.0.34'
hmod 'loki', '0.0.36'
hmod 'network', '0.1.31'
hmod 'nginx', '0.0.28'
hmod 'ntp', '0.0.12'
hmod 'openssh', '0.0.30'
hmod 'prometheus', '0.0.39'
hmod 'sdr', '0.0.14'
hmod 'serverless', '0.2.16'
hmod 'slackmastodon', '0.0.17'
hmod 'smb', '0.0.11'
hmod 'teslamate', '0.0.22'
hmod 'updates', '0.0.15'
hmod 'ups', '0.0.10'
hmod 'wh31e', '0.0.18'
hmod 'wireguard', '0.0.33'
hmod 'zwave', '0.0.12'

pmod 'firewall', '5.0.0'
pmod 'mount_core', '1.2.0'
pmod 'stdlib', '9.2.0'
pmod 'vcsrepo', '6.1.0'
