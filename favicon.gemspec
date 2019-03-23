
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "favicon/version"

Gem::Specification.new do |spec|
  spec.name          = "favicon"
  spec.version       = Favicon::VERSION
  spec.authors       = ["benji"]
  spec.email         = ["benjamin.cousaert@gmail.com"]
  spec.homepage      = "https://studentkickoff.be"

  spec.summary       = %q{Provides a method to generate all code and images for a favicon in the browser}

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "vendor"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
