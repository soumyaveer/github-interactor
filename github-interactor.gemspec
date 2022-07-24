# frozen_string_literal: true

require_relative "lib/github/interactor/version"

Gem::Specification.new do |spec|
  spec.name = "github-interactor"
  spec.version = Github::Interactor::VERSION
  spec.authors = ["Soumya Veer"]
  spec.email = ["veer.soumya@gmail.com"]

  spec.summary = "Interact with github to pull users followers and repo information"
  spec.description = "Interact with github to pull users followers and repo information"
  spec.homepage = ""
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
  # spec.files         = Dir['{config,lib}/**/*', './']
  spec.add_development_dependency 'bundler',           '~> 2.3.16'
  spec.add_dependency             'interactor',        '~> 3.0'
  spec.add_dependency 'vcr'
  spec.add_development_dependency 'pry',              '~> 0.13.1'
  spec.add_development_dependency 'awesome_print',    '~> 1.9'
  spec.add_development_dependency 'httparty'
  spec.add_development_dependency 'webmock'
end
