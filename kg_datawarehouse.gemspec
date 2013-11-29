# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kg_datawarehouse/version'

Gem::Specification.new do |spec|
  spec.name        = 'kg_datawarehouse'
  spec.version  = KgDatawarehouse::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.summary     = "KG Data Warehouse"
  spec.description = "Rails Implementation of Kimball Group Data Warehouse Dimensional Modeling"
  spec.authors     = ["Pierre-Leo Bourbonnais"]
  spec.email       = ["leo@leograph.com"]
  spec.homepage    = 'https://github.com/kaligrafy/kg_datawarehouse'
  spec.license     = 'MIT'
  
  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", "app"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'coffee-rails'
  spec.add_dependency 'sass-rails'
  spec.add_dependency 'uglifier'
  spec.add_dependency 'jquery-rails'
  spec.add_dependency "railties"
  
  spec.add_dependency 'pg'
  spec.add_dependency 'rdoc'
  spec.add_dependency 'globalize3'
  spec.add_dependency 'holidays'
  spec.add_dependency 'rake'
  #spec.add_dependency 'spreadsheet' # may be used some time
end