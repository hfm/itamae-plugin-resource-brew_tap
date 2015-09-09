# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-resource-brew_tap"
  spec.version       = "0.1.0"
  spec.authors       = ["Takahiro OKUMURA"]
  spec.email         = ["hfm.garden@gmail.com"]

  spec.summary       = "Homebrew tap resource for Itamae plugin"
  spec.description   = "Homebrew tap resource for Itamae plugin"
  spec.homepage      = "https://github.com/tacahilo/itamae-plugin-resource-brew_tap"
  spec.license       = "MIT License"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit", "~> 3.1"
  spec.add_development_dependency "mocha"
end
