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

hmod 'acme', '0.0.38'
hmod 'babybuddy', '0.0.3'
hmod 'backup', '0.0.43'
hmod 'configvault', '0.0.52'
hmod 'console', '0.0.23'
hmod 'cultivator', '0.0.22'
hmod 'disks', '0.0.38'
hmod 'docker', '0.0.46'
hmod 'frameproxy', '0.0.15'
hmod 'goat', '0.0.30'
hmod 'govee', '0.0.3'
hmod 'grafana', '0.0.48'
hmod 'homeassistant', '0.0.25'
hmod 'hostname', '0.1.27'
hmod 'iptables', '0.0.24'
hmod 'keyboard', '0.0.22'
hmod 'kiosk', '0.0.61'
hmod 'kvm', '0.0.43'
hmod 'loki', '0.0.60'
hmod 'maybe', '0.0.3'
hmod 'mqtt', '0.0.3'
hmod 'network', '0.1.44'
hmod 'nginx', '0.0.38'
hmod 'ntp', '0.0.21'
hmod 'openssh', '0.0.40'
hmod 'prometheus', '0.0.51'
hmod 'sdr', '0.0.25'
hmod 'serverless', '0.2.30'
hmod 'slackmastodon', '0.0.26'
hmod 'smb', '0.0.20'
hmod 'sysctl', '0.0.2'
hmod 'unpoller', '0.0.28'
hmod 'updates', '0.0.24'
hmod 'ups', '0.0.19'
hmod 'wh31e', '0.0.28'
hmod 'wireguard', '0.0.43'
hmod 'zwave', '0.0.23'

pmod 'apt', '9.1.0'
pmod 'firewall', '6.0.0'
pmod 'mount_core', '1.2.0'
pmod 'stdlib', '9.2.0'
pmod 'vcsrepo', '6.1.0'
