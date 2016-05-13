# This file is managed centrally by modulesync
#   https://github.com/weareact/modulesync_config

source 'https://rubygems.org'

gem 'rake', '<11.x'
gem 'puppet', ENV['PUPPET_VERSION'] || '~> 3.7.0' 

group :unit_tests do
  gem 'rspec',                         :require => false
  gem 'rspec-puppet', '~>2.0',         :require => false
  gem 'puppetlabs_spec_helper',        :require => false
  gem 'puppet-lint',                   :require => false,
    :git => 'https://github.com/fatmcgav/puppet-lint.git', :ref => 'c033c373'
  gem 'puppet-syntax',                 :require => false
  gem 'ci_reporter_rspec',             :require => false
  gem 'rspec-puppet-facts',            :require => false
  gem 'metadata-json-lint',            :require => false
end

