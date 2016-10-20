# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inflecto/refinements/version'

Gem::Specification.new do |spec|
  spec.name = 'inflecto-refinements'
  spec.version = Inflecto::Refinements::VERSION
  spec.authors = ['Alex Semyonov']
  spec.email = ['alex@semyonov.us']

  spec.summary = 'String inflections & Numeric#ordinalize based on Inflecto'
  spec.description = 'Refine your Strings & Numbers easy'
  spec.homepage = 'https://github.com/alsemyonov/inflecto-refinements'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'inflecto', '~> 0.0.2'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_development_dependency 'rubocop', '~> 0.44.1'
end
