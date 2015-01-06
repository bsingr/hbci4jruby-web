# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hbci4jruby/web/version'

Gem::Specification.new do |spec|
  spec.name          = "hbci4jruby-web"
  spec.version       = Hbci4jruby::Web::VERSION
  spec.authors       = ["Jens Bissinger"]
  spec.email         = ["mail@jens-bissinger.de"]
  spec.summary       = %q{HBCI4JRuby-Web provides a HTTP API to do HBCI/FinTS requests.}
  spec.description   = %q{HBCI4JRuby-Web provides a HTTP API to do HBCI/FinTS requests.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "httparty", "~> 0.13"

  spec.add_dependency "sinatra", "~> 1.4"
  spec.add_dependency "hbci4jruby", "~> 0.1"
end
