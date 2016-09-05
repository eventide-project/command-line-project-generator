# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eventide/generators/version'

Gem::Specification.new do |spec|
  spec.name          = "eventide-generators"
  spec.version       = Eventide::Generators::VERSION
  spec.authors       = ["Aaron Dufall"]
  spec.email         = ["aald212@gmail.com"]
  spec.summary       = %q{Eventide project generation}
  spec.description   = %q{Code generation for eventide}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor", "~> 0.19.1"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
