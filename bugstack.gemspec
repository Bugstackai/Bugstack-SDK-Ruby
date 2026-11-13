# frozen_string_literal: true

require_relative "lib/bugstack/version"

Gem::Specification.new do |spec|
  spec.name = "bugstack"
  spec.version = Bugstack::VERSION
  spec.authors = ["BugStack"]
  spec.email = ["support@bugstack.ai"]

  spec.summary = "The bugstack SDK for Ruby"
  spec.description = "Reports uncaught server errors from Rails, Sinatra and Rack apps to bugstack, " \
                     "autonomous software maintenance. bugstack watches your app and your repository, " \
                     "fixes what breaks, and sends every change as a pull request you control. " \
                     "No runtime dependencies."
  spec.homepage = "https://bugstack.ai"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["documentation_uri"] = "https://bugstack.ai/docs/sdk/ruby"
  spec.metadata["source_code_uri"] = "https://github.com/Bugstackai/Bugstack-SDK-Ruby"
  spec.metadata["changelog_uri"] = "https://github.com/Bugstackai/Bugstack-SDK-Ruby/blob/main/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "https://github.com/Bugstackai/Bugstack-SDK-Ruby/issues"

  spec.files = Dir.glob("lib/**/*.rb") + %w[
    README.md LICENSE CHANGELOG.md
  ]
  spec.require_paths = ["lib"]

  # Zero runtime dependencies — stdlib only

  spec.add_development_dependency "rspec", "~> 3.12"
  spec.add_development_dependency "webmock", "~> 3.18"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rubocop", "~> 1.50"
end
