# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bigcartel/version'

Gem::Specification.new do |spec|
  spec.name          = "bigcartel"
  spec.version       = Bigcartel::VERSION
  spec.authors       = ["Dylan Montgomery"]
  spec.email         = ["mail@citizensinspace.com"]
  spec.summary       = %q{Ruby wrapper for the Bigcartel API}
  spec.homepage      = "https://github.com/citizens/bigcartel-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency 'rest-client'
  spec.add_dependency 'json'
  spec.add_dependency 'recursive-open-struct'
  spec.add_dependency 'queryparams'
end
