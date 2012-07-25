$:.push File.expand_path('../lib', __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'as_jsonable'
  s.version     = '0.1.0'
  s.authors     = ['Naoto Takai']
  s.email       = ['takai@cookpad.com']
  s.homepage    = 'http://github.com/takai/as_jsonable'
  s.summary     = 'DSL for as_json'
  s.description = 'as_jsonable provides a tiny DSL to override as_json.'

  s.files = `git ls-files`.split($\)

  s.add_runtime_dependency 'activerecord'
  s.add_development_dependency 'rspec'
end
