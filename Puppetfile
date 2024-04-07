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
hmod 'backup', '0.0.43'
hmod 'configvault', '0.0.52'
hmod 'console', '0.0.23'
hmod 'cultivator', '0.0.22'
hmod 'disks', '0.0.38'
hmod 'docker', '0.0.44'
hmod 'frameproxy', '0.0.13'
hmod 'homeassistant', '0.0.25'
hmod 'hostname', '0.1.27'
hmod 'goat', '0.0.23'
hmod 'grafana', '0.0.45'
hmod 'influxdb', '0.0.30'
hmod 'iptables', '0.0.24'
hmod 'keyboard', '0.0.22'
hmod 'kiosk', '0.0.61'
hmod 'kvm', '0.0.43'
hmod 'loki', '0.0.54'
hmod 'mqtt', '0.0.3'
hmod 'network', '0.1.44'
hmod 'nginx', '0.0.38'
hmod 'ntp', '0.0.21'
hmod 'openssh', '0.0.40'
hmod 'prometheus', '0.0.49'
hmod 'sdr', '0.0.25'
hmod 'serverless', '0.2.25'
hmod 'slackmastodon', '0.0.26'
hmod 'smb', '0.0.20'
hmod 'unpoller', '0.0.24'
hmod 'updates', '0.0.24'
hmod 'ups', '0.0.19'
hmod 'wh31e', '0.0.27'
hmod 'wireguard', '0.0.42'
hmod 'zwave', '0.0.23'

pmod 'apt', '9.1.0'
pmod 'firewall', '6.0.0'
pmod 'mount_core', '1.2.0'
pmod 'stdlib', '9.2.0'
pmod 'vcsrepo', '6.1.0'
