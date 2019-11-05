lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "FoodInMyCity/version"

Gem::Specification.new do |spec|
  spec.name          = "FoodInMyCity"
  spec.version       = FoodInMyCity::VERSION
  spec.authors       = ["Jessica Cervantes"]
  spec.email         = ["cervantesjess1994@gmail.com"]

  spec.summary       = %q{This Ruby Gem provides a CLI to view some of the best food places in my city, Palo Alto.}
  spec.description   = %q{This Ruby Gem will provide you with a list of 20 of the best food places in Palo Alto, CA, from there you will choose what interests you by number. It will then provide you with all the basic info for the food place you chose(according to the number)}
  spec.homepage      = "http://helloworld.com" 
  spec.license       = "MIT"
  spec.metadata["allowed_push_host"] = "http://helloworld.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://helloworld.com"
  spec.metadata["changelog_uri"] = "http://helloworld.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "httparty"
end
