# frozen_string_literal: true

require_relative "lib/day_offs/consultant/version"

Gem::Specification.new do |spec|
  spec.name = "day_offs-my_source"
  spec.version = DayOffs::Consultant::VERSION
  spec.authors = ["Kroch4ka"]
  spec.email = ["nekitgo80@gmail.com"]

  spec.summary = "consultant source for day_offs gem"
  spec.description = "consultant source for day_offs gem"
  spec.homepage = "https://github.com/Kroch4ka/day_offs-consultant"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Kroch4ka/day_offs-consultant"
  spec.metadata["changelog_uri"] = "https://github.com/Kroch4ka/day_offs-consultant"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.glob('lib/**/*') + %w[README.md LICENSE.txt]
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "day_offs"
  spec.add_dependency "nokogiri"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
