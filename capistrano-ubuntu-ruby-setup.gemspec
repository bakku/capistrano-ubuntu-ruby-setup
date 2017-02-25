# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/ubuntu_ruby_setup/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-ubuntu-ruby-setup"
  spec.version       = Capistrano::UbuntuRubySetup::VERSION
  spec.authors       = ["Christian Paling"]
  spec.email         = ["christian.paling@googlemail.com"]

  spec.summary       = %q{Easily set up an ubuntu instance with a Ruby environment using capistrano}
  spec.description   = %q{Easily set up an ubuntu instance with a Ruby environment using capistrano}
  spec.homepage      = "https://github.com/bakku/capistrano-ubuntu-ruby-setup"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano', '>= 3.0'
  spec.add_dependency 'capistrano-rbenv', '>= 2.0'
  spec.add_dependency 'capistrano-rbenv-install', '~> 1.1.0'
  
  spec.add_development_dependency "rake"
end
