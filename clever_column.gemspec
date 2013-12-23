# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clever_column/version'

Gem::Specification.new do |spec|
  spec.name          = "clever_column"
  spec.version       = CleverColumn::VERSION
  spec.authors       = ["Kimi"]
  spec.email         = ["kimigao1986@gmail.com"]
  spec.description   = %q{枚举指定字段含义及说明}
  spec.summary       = %q{枚举指定字段含义及说明}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "mysql2"
  spec.add_development_dependency "pry"

  spec.add_dependency "activerecord"
end
