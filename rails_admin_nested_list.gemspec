# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_admin_nested_list/version'

Gem::Specification.new do |spec|


  spec.name        = "rails_admin_nested_list"
  spec.version     = RailsAdminNestedList::VERSION
  spec.summary     = "Rails admin Nested List"
  spec.description = "Nested list field for has many relation in rails admin panel"
  spec.authors     = ["Nicolas Milot", "Louis-Philippe Dumas", "iXmédia"]
  spec.email       = "dev@ixmedia.com"
  spec.license     = "MIT"
  spec.homepage    = "https://github.com/ixmedia/rails_admin_nested_list"

  spec.files         = Dir["{app,lib}/**/*", "Rakefile", "README.md"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails_admin",  '~> 3.0', '>= 3.0.0'
  spec.add_dependency "rails", "~> 7.0"
  spec.add_dependency "sass-rails", "~> 6.0"

  spec.add_development_dependency 'rails_admin', '~> 7.0', '>= 7.0.0'
end
