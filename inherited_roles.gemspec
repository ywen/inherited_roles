# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Yi Wen"]
  gem.email         = ["ywen.github@gmail.com"]
  gem.description   = %q{Inherited Roles}
  gem.summary       = %q{Inherited Roles}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "inherited-roles"
  gem.require_paths = ["lib"]
  gem.license       = "MIT"
  gem.version       = "0.0.1"
  gem.add_development_dependency(%q<rspec>)
  gem.add_development_dependency(%q<rake>)
  gem.add_development_dependency(%q<guard-rspec>)
  gem.add_development_dependency 'rb-fsevent'
  gem.add_development_dependency 'rb-readline'
  gem.add_development_dependency 'terminal-notifier-guard'
end
