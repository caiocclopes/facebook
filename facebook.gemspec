# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "facebook/version"

Gem::Specification.new do |s|
  s.name        = "facebook"
  s.version     = Facebook::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Fernando Nobre"]
  s.email       = ["fernando.nobre@i.ndigo.com.br"]
  s.homepage    = ""
  s.summary     = %q{generic facebook module}
  s.description = %q{provides a generic facebook configuration gem}

  s.add_dependency('mongoid', '2.0.0.rc.6')
  s.add_dependency('bson_ext', '>=1.2')

  s.rubyforge_project = "facebook"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
