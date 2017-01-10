include 'halyard'
class { 'homebrew':
  path => '/opt/brew'
}
include 'asdf'
asdf::plugin { [
  'https://github.com/asdf-vm/asdf-ruby',
  'https://github.com/tuvistavie/asdf-python',
  'https://github.com/kennyp/asdf-golang',
  'https://github.com/asdf-vm/asdf-erlang',
  'https://github.com/neerfri/asdf-terraform'
]: }
