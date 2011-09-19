$:.push File.expand_path("../lib", __FILE__)
require "tika4r/version"

Gem::Specification.new do |s|
  s.name        = "tika4r"
  s.version     = Tika4R::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Peter Vanbroekhoven"]
  s.email       = ["peter@xaop.com"]
  s.homepage    = ""
  s.summary     = %q{Simple wrapper around the Apache Tika library}
  s.description = %q{Simple wrapper around the Apache Tika library}

  s.files         = Dir["lib/**/*.rb"]
  s.require_paths = ["lib"]
end
