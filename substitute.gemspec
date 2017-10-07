# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "substitute/version"

Gem::Specification.new do |spec|
  spec.name          = "substitute"
  spec.version       = Substitute::VERSION
  spec.authors       = ["Ed Robinson"]
  spec.email         = ["ed.robinson@reevoo.com"]

  spec.summary       = "Convert Adobe Encore Text Scripts to WebVTT"
  spec.homepage      = "https://github.com/errm/substitute"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(/^(test|spec|features)\//) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "reevoocop"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4"
end
