$:.push File.expand_path("../lib", __FILE__)
require "tika4r/version"

Gem::Specification.new do |s|
  s.name        = "tika4r"
  s.version     = Tika4R::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Peter Vanbroekhoven", "Joeri Samson"]
  s.email       = ["peter@xaop.com", "joeri@xaop.com"]
  s.homepage    = ""
  s.summary     = %q{Simple wrapper around the Apache Tika library}
  s.description = %q{Simple wrapper around the Apache Tika library}

  s.files         = Dir["lib/**/*.rb"]
  s.require_paths = ["lib"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rbj>, [">= 1.3.5"])
    else
      s.add_dependency(%q<rbj>, [">= 1.3.5"])
    end
  else
    s.add_dependency(%q<rbj>, [">= 1.3.5"])
  end
end
