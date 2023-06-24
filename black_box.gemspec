# frozen_string_literal: true

require_relative "lib/black_box/version"

Gem::Specification.new do |spec|
  spec.name = "black_box"
  spec.version = BlackBox::VERSION
  spec.authors = ["Jose Augusto"]
  spec.email = ["joseaugusto.881@outlook.com"]

  spec.summary = "The black box of your rails application."
  spec.description = "A gem that simplifies the way you handle logs"
  spec.homepage = "https://github.com/JAugusto42/black_box"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/JAugusto42/black_box"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/JAugusto42/black_box"
  spec.metadata["changelog_uri"] = "https://github.com/JAugusto42/black_box/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
