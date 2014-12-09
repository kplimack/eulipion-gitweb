# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'English'

Gem::Specification.new do |gem|
  gem.name = 'gitweb'
  gem.version = '0.0.1'
  gem.license = 'Apache 2.0'
  gem.authors = ['Jake Plimack']
  gem.email = ['jake.plimack@gmail.com']
  gem.description = 'Gitweb is a web-interface for interacting with git'
  gem.summary = gem.description
  gem.homepage = 'http://github.com/kplimack/eulipion-gitweb'
  gem.files = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.executables = %w(kitchen)
  gem.test_files = gem.files.grep(/^(test|spec|features)\//)
  gem.require_paths = ['lib']
  # gem.required_ruby_version = '>= 1.9.1'
  gem.add_dependency 'mixlib-shellout', '~> 1.2'
  gem.add_dependency 'net-scp'
  gem.add_dependency 'net-ssh'
  gem.add_dependency 'safe_yaml'
  gem.add_dependency 'thor'
  gem.add_dependency 'rubocop'
  gem.add_dependency 'foodcritic'
  gem.add_dependency 'cane'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'aruba'
  gem.add_development_dependency 'fakefs'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'mocha'
  gem.add_development_dependency 'countloc'
  gem.add_development_dependency 'maruku'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'finstyle'
end
