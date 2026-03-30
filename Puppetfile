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

hmod 'acme', '0.0.42'
hmod 'backup', '0.0.44'
hmod 'configvault', '0.0.53'
hmod 'console', '0.0.24'
hmod 'cultivator', '0.0.23'
hmod 'disks', '0.0.39'
hmod 'docker', '0.0.49'
hmod 'frameproxy', '0.0.17'
hmod 'garmin', '0.0.5'
hmod 'goat', '0.0.31'
hmod 'govee', '0.0.5'
hmod 'grafana', '0.0.50'
hmod 'homeassistant', '0.0.26'
hmod 'hostname', '0.1.28'
hmod 'influxdb', '0.0.33'
hmod 'iptables', '0.0.25'
hmod 'keyboard', '0.0.23'
hmod 'kiosk', '0.0.63'
hmod 'kvm', '0.0.44'
hmod 'loki', '0.0.61'
hmod 'maybe', '0.0.4'
hmod 'mqtt', '0.0.4'
hmod 'network', '0.1.45'
hmod 'nginx', '0.0.39'
hmod 'ntp', '0.0.22'
hmod 'openssh', '0.0.41'
hmod 'prometheus', '0.0.52'
hmod 'sdr', '0.0.31'
hmod 'serverless', '0.2.31'
hmod 'simplefin', '0.0.5'
hmod 'slackmastodon', '0.0.27'
hmod 'smb', '0.0.21'
hmod 'stocks', '0.0.4'
hmod 'sysctl', '2.0.2'
hmod 'unpoller', '0.0.29'
hmod 'updates', '0.0.25'
hmod 'ups', '0.0.21'
hmod 'wh31e', '0.0.31'
hmod 'wireguard', '0.0.44'
hmod 'zwave', '0.0.25'

pmod 'apt', '9.1.0'
pmod 'firewall', '6.0.0'
pmod 'mount_core', '1.2.0'
pmod 'stdlib', '9.2.0'
pmod 'vcsrepo', '6.1.0'
