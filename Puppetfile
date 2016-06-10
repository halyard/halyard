forge 'https://forgeapi.puppetlabs.com'

ORG = 'halyard'
DEV_PATH = "~/src/#{ORG}/puppet-%s"

def hmod(name, version = nil, params = {})
  org = params[:org] || ORG
  repo = params[:repo] || "#{org}-#{name}"
  params[:path] ||= File.expand_path(DEV_PATH % name) if params[:dev]
  return mod(repo, path: params[:path]) if params[:path]
  mod repo, version
end

hmod 'halyard', '0.0.3'
hmod 'repository', '2.4.3'
hmod 'homebrew', '2.0.5'
hmod 'zsh' '0.0.10'
