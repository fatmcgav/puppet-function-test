# This file is managed centrally by modulesync
#   https://github.com/weareact/modulesync_config
require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'
require 'puppet-syntax/tasks/puppet-syntax'
require 'puppetlabs_spec_helper/rake_tasks' # needed for some module packaging tasks

# Exclude un-necessay dirs from Lint and Syntax checker.
exclude_paths = [
  "pkg/**/*",
  "vendor/**/*",
  "spec/**/*",
]
PuppetSyntax.exclude_paths = exclude_paths

# Puppet-Lint 1.1.0
Rake::Task[:lint].clear
PuppetLint::RakeTask.new :lint do |config|
  config.ignore_paths = exclude_paths 
  config.log_format = '%{path}:%{linenumber}:%{check}:%{KIND}:%{message}'
  config.disable_checks = ["80chars", "class_inherits_from_params_class"]
  config.fail_on_warnings = true
  config.relative = true
end

begin
  # Used by Jenkins to show tests report.
  require 'ci/reporter/rake/rspec'
  ENV['CI_REPORTS'] = 'reports'
rescue LoadError
end

desc "Run acceptance tests"
RSpec::Core::RakeTask.new(:acceptance) do |t|
  t.pattern = 'spec/acceptance'
end
task :acceptance => :librarian_clean

# All-in-one test
desc "Run syntax, lint, and spec tests."
task :test => [
  :syntax,
  :lint,
  :spec,
]
