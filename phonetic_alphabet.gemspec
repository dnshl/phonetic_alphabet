# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'phonetic_alphabet/version'

Gem::Specification.new do |spec|
  spec.name          = "phonetic_alphabet"
  spec.version       = PhoneticAlphabet::VERSION
  spec.authors       = ["Dennis Hall"]
  spec.email         = ["dennis@dennishall.de"]
  spec.summary       = %q{Enables strings to be spelled with the phonetic alphabet}
  spec.description   = %q{Extends ruby String class with to_p method which converst strings to their phonetic alphabet representation.}
  spec.homepage      = "https://github.com/dnshl/phonetic_alphabet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
end
