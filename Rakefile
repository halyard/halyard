require 'puppet-lint/tasks/puppet-lint'
require 'puppet-syntax/tasks/puppet-syntax'

PuppetLint::RakeTask.new(:lint) do |config|
  config.fail_on_warnings = true
  config.ignore_paths = ['vendor/**/*']
end

desc 'Run syntax and lint checks'
task test: [
  :syntax,
  :lint
]
