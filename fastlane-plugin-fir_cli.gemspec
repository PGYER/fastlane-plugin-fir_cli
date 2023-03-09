# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fastlane/plugin/fir_cli/version"

Gem::Specification.new do |spec|
  spec.name = "fastlane-plugin-fir_cli"
  spec.version = Fastlane::FirCli::VERSION
  spec.author = "atpking"
  spec.email = "atpking@gmail.com"

  spec.summary = "upload ipa or apk to fir.im"
  spec.homepage = "https://github.com/FIRHQ/fastlane-plugin-fir_cli"
  spec.license = "MIT"

  spec.files = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # Don't add a dependency to fastlane or fastlane_re
  # since this would cause a circular dependency

  spec.add_dependency "fir-cli", "~> 2.0.18"

  spec.add_development_dependency("pry")
  spec.add_development_dependency("byebug")
  spec.add_development_dependency("bundler")
  spec.add_development_dependency("rspec")
  spec.add_development_dependency("rspec_junit_formatter")
  spec.add_development_dependency("rake")
  spec.add_development_dependency("rubocop", "0.49.1")
  spec.add_development_dependency("rubocop-require_tools")
  spec.add_development_dependency("simplecov")
  spec.add_development_dependency("fastlane", ">= 2.136.0")
end
