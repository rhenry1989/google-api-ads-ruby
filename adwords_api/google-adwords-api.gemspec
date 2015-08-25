# -*- encoding: utf-8 -*-
#
# Authors:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'adwords_api/version'

Gem::Specification.new do |s|
  s.name = 'google-adwords-api'
  s.version = AdwordsApi::ApiConfig::CLIENT_LIB_VERSION
  s.summary = 'Ruby Client libraries for AdWords API'
  s.description = '%s is a AdWords API client library for Ruby' % s.name
  s.homepage = 'http://code.google.com/p/google-api-ads-ruby/'
  s.authors = ['Danial Klimkin', 'Michael Cloonan']
  s.email = ['api.dklimkin@gmail.com', 'api.mcloonan@gmail.com']
  s.license = 'Apache-2.0'
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = 'google-adwords-api'
  s.require_path = 'lib'
  s.files = Dir.glob('{lib,test}/**/*') + Dir.glob('examples/v*/**/*') +
      %w(COPYING README.md ChangeLog adwords_api.yml)
  s.test_files = ['test/suite_unittests.rb']
  s.add_runtime_dependency('google-ads-common', '~> 0.10.0')
  s.add_development_dependency('rr', '~> 1.1.2')
  s.add_development_dependency('webmock', '~> 1.21.0')
end
