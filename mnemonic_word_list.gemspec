# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mnemonic_word_list/version'

Gem::Specification.new do |spec|
  spec.name          = "mnemonic_word_list"
  spec.version       = MnemonicWordList::VERSION
  spec.authors       = ["Ivan Vanderbyl"]
  spec.email         = ["ivanvanderbyl@me.com"]
  spec.summary       = %q{An exhaustive list of 1633 mnemonic words resurrected from Web Archive.}
  spec.homepage      = "https://github.com/ivanvanderbyl/mnemonic_word_list"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
