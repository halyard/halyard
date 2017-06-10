forge 'https://forgeapi.puppetlabs.com'

ORG = 'halyard'

def hmod(name, version = nil, params = {})
  org = params[:org] || ORG
  repo = params[:repo] || "#{org}-#{name}"
  mod repo, version
end

hmod 'halyard', '0.0.19'
hmod 'homebrew', '3.0.4'
hmod 'asdf', '0.0.11'
hmod 'zsh', '0.1.1'
hmod 'dotfiles', '0.2.1'
