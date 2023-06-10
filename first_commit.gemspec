# frozen_string_literal: true

require_relative "lib/first_commit/version"

Gem::Specification.new do |spec|
  spec.name = "first_commit"
  spec.version = FirstCommit::VERSION
  spec.authors = [ "Yusuf Birader" ]
  spec.email = "yusuf.birader@hotmail.com"
  spec.summary = "Retrieve the URL of the first commit for any public Github repository"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.files = Dir["lib/**/*", "LICENSE.txt", "README.md"]
  spec.executables = %w[ first-commit ]


  spec.add_dependency "thor", "~> 1.2"
  spec.add_dependency "zeitwerk", "~> 2.5"
  spec.add_dependency "dotenv", "~> 2.8"
  spec.add_dependency "octokit", "~> 5.0"
end
