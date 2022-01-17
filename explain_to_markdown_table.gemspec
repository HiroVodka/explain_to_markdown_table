require_relative "lib/explain_to_markdown_table/version"

Gem::Specification.new do |spec|
  spec.name        = "explain_to_markdown_table"
  spec.version     = ExplainToMarkdownTable::VERSION
  spec.authors     = ["HiroVodka"]
  spec.email       = ["hiro.vodka06@gmail.com"]
  spec.homepage    = "http://example.com"
  spec.summary     = "Summary."
  spec.description = "Description."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "http://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://example.com"
  spec.metadata["changelog_uri"] = "http://example.com"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.1"
  spec.add_dependency "mysql2"

  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rubocop"
end
