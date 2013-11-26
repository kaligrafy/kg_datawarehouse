# encoding: utf-8
Gem::Specification.new do |s|
  s.name        = 'kg_datawarehouse'
  s.version     = '0.0.1'
  s.date        = '2013-11-26'
  s.platform    = Gem::Platform::RUBY
  s.summary     = "KG Data Warehouse"
  s.description = "Rails Implementation of Kimball Group Data Warehouse Dimensional Modeling"
  s.authors     = ["Pierre-Leo Bourbonnais"]
  s.email       = 'leo@leograph.com'
  s.homepage    = 'https://github.com/kaligrafy/kg_datawarehouse'
  s.license     = 'MIT'
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]
end