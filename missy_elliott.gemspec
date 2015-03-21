# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'missy_elliott/version'

Gem::Specification.new do |spec|
  spec.name          = "missy_elliott"
  spec.version       = MissyElliott::VERSION
  spec.authors       = ["Tom Lord"]
  spec.email         = ["tom.lord@gmail.com"]
  spec.summary       = %q{Applies the Missy Elliott encryption algorithm on a string}
  spec.description   = %q{Got a big string? Let me search it. Shift yo bits down, flip it and reverse it.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
