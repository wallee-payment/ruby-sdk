# -*- encoding: utf-8 -*-

# Wallee AG Ruby SDK
#
# This library allows to interact with the Wallee AG payment service.
#
# Copyright owner: Wallee AG
# Website: https://en.wallee.com
# Developer email: ecosystem-team@wallee.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$:.push File.expand_path("../lib", __FILE__)
require "wallee-ruby-sdk/version"

Gem::Specification.new do |s|
  s.name        = "wallee-ruby-sdk"
  s.version     = WalleeRubySdk::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["wallee AG"]
  s.email       = ["ecosystem-team@wallee.com"]
  s.homepage    = "https://app-wallee.com/"
  s.summary     = "A ruby wrapper around the wallee API."
  s.description = "The wallee SDK allows an easy interaction with the wallee web service."
  s.license     = "Apache-2.0"
  s.metadata    = {
    "git" => "https://github.com/wallee-payment/ruby-sdk"
  }
  s.required_ruby_version = ">= 3.2.0"

  s.add_runtime_dependency 'faraday', '~> 2.13.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart', '~> 1.1.0'
  s.add_runtime_dependency 'jwt', '~> 2.10.1'
  s.add_runtime_dependency 'marcel', '~> 1.0.4'
  s.add_runtime_dependency 'concurrent-ruby', '~> 1.3.5'

  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'test-unit', '~> 3.6.7'

  s.files = Dir.glob("**/*").reject { |f| File.directory?(f) || f.end_with?('.gem') || f.include?('/ignored_folder/') }
  s.test_files = Dir.glob("test/**/*.rb").reject { |f| File.directory?(f) }
  s.executables = Dir.glob("bin/*").map { |f| File.basename(f) }
  s.require_paths = ["lib"]
end
