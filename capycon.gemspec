
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "capycon/version"

Gem::Specification.new do |spec|
  spec.name          = "capycon"
  spec.version       = Capycon::VERSION
  spec.authors       = ["Mesut Güneş"]
  spec.email         = ["gunesmes@gmail.com"]

  spec.summary       = %q{Run Capybara in the console without Ruby on Rails project}
  spec.description   = %q{Before writing your test for your automation project which is not written by ROR, you can test the steps with Capycon via your terminal}
  spec.homepage      = "https://rubygems.org/capycon"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2", ">= 2.2.33"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  
  spec.add_dependency "capybara", "~> 3.0"
  spec.add_dependency "selenium-webdriver", "~> 3.0"
  spec.add_dependency "bundler", "~> 2.2", ">= 2.2.33"
end
