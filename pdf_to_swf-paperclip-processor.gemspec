# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pdf_to_swf-paperclip-processor/version"

Gem::Specification.new do |s|
  s.name        = "pdf_to_swf-paperclip-processor"
  s.version     = Pdftoswf::Paperclip::Processor::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Armin Pašalić", "Mojmir Novakovic-moonflash"]
  s.email       = ["apasalic@devlogic.eu","moonflash.as3@gmail.com"]
  s.homepage    = "https://github.com/Krule/pdf_to_swf-paperclip-processor"
  s.summary     = %q{Converts uploaded pdf to swf}
  s.description = %q{This gem is simple Paperclip processor which uses swftools to convert uploaded pdf files to swf}

  s.rubyforge_project = "pdf_to_swf-paperclip-processor"
  
  s.add_dependency "rails", "~> 3.0"
  s.add_dependency "paperclip", "~> 2.3"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
