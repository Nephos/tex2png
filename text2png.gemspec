# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'text2png/version'

Gem::Specification.new do |spec|
  spec.name          = "text2png"
  spec.version       = Text2png::VERSION
  spec.authors       = ["Kaid", "Nephos"]
  spec.email         = ["kaid@kaid.me", "poulet_a@epitech.eu"]
  spec.summary       = "Tex literal to png converter"
  spec.description   = "Forked from https://github.com/mindpin/tex2png"
  spec.homepage      = "https://github.com/Nephos/text2png"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")# + ["bin/text2png"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.executables = %w(text2png)

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 0"
  spec.add_development_dependency "pry", "~> 0"
  spec.add_development_dependency "rspec", "~> 0"
end
