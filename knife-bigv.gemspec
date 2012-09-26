$:.unshift(File.dirname(__FILE__) + '/lib')
require 'knife-bigv/version'
Gem::Specification.new do |s|
  s.name = 'knife-bigv'
  s.version = KnifeBigv::VERSION
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rdoc", "LICENSE" ]
  s.summary = "BigV Support for Chef's Knife Command"
  s.description = s.summary
  s.author = "Alice Kaerast"
  s.email = "alice.kaerast@webanywhere.co.uk"

  s.add_dependency "chef", ">= 0.9.14"
  s.add_dependency "highline"
  s.require_path = 'lib'
  s.files = %w(LICENSE README.rdoc) + Dir.glob("lib/**/*")
end