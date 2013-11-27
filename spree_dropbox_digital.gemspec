# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_dropbox_digital'
  s.version     = '1.3.3'
  s.summary     = 'Digital Deliveries for Spree via Dropbox'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Doug Bradbury'
  s.email     = 'doug@bradbury.cc'
  s.homepage  = 'http://www.github.com/dougbradbury.spree_dropbox_digitial'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.4.beta'
  s.add_dependency 'dropbox-sdk'

  s.add_development_dependency 'capybara', '~> 2.0'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'sqlite3'
end
