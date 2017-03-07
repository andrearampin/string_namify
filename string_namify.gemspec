# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_namify/version'

Gem::Specification.new do |spec|
  spec.name          = "string_namify"
  spec.version       = StringNamify::VERSION
  spec.authors       = ["Andrea Rampin"]
  spec.email         = ["andrea.rampin@gmail.com"]

  spec.description   = %q{Namify even names with apostrophe.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/andrearampin/string_namify"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'byebug'
end
