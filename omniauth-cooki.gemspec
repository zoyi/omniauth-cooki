# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-cooki/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["Zoyi, Inc."]
  gem.email = ["cooki@zoyi.co"]
  gem.description = %q{An OmniAuth 1.0 strategy for the Cooki OAuth2 provider.}
  gem.summary = %q{An OmniAuth 1.0 strategy for the Cooki OAuth2 provider.}
  gem.homepage = "https://github.com/Zoyi/omniauth-cooki"

  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name = "omniauth-cooki"
  gem.require_paths = ["lib"]
  gem.version = OmniAuth::Cooki::VERSION

  gem.add_dependency 'omniauth', '~> 1.1'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'

  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rake'
end
