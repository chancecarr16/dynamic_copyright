# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dynamic_copyright/version'

Gem::Specification.new do |spec|
  spec.name          = "dynamic_copyright"
  spec.version       = DynamicCopyright::VERSION
  spec.authors       = ["Chance Carr"]
  spec.email         = ["chancecarr@wow.com"]

  spec.summary       = %q{A few view specific methods for applications I use, including a dynamic copyright method.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "https://ccarr-rails-workspace-chancecarr1.c9users.io/about-me"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
