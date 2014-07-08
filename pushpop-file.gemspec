# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'pushpop-file/version'

Gem::Specification.new do |s|

  s.name        = "pushpop-file"
  s.version     = Pushpop::File::VERSION
  s.authors     = ["Josh Dzielak"]
  s.email       = "josh@keen.io"
  s.homepage    = "https://github.com/pushpop-project/pushpop-file"
  s.summary     = "A Pushpop plugin for reading file contents"

  s.add_dependency "pushpop"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

