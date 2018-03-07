$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'geoblacklight_sidecar_images/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'geoblacklight_sidecar_images'
  s.version     = GeoblacklightSidecarImages::VERSION
  s.authors     = ['Eric Larson', 'Eliot Jordan']
  s.email       = ['ewlarson@umn.edu']
  s.homepage    = 'https://github.com/ewlarson/geoblacklight_sidecar_images'
  s.summary     = 'Store local copies of remote imagery in GeoBlacklight'
  s.license     = 'Apache 2.0'

  s.files         = `git ls-files`.split('\n')
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split('\n')
  s.executables   = `git ls-files -- bin/*`.split('\n').map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'aasm'
  s.add_dependency 'carrierwave'
  s.add_dependency 'geoblacklight', '~> 1.7'
  s.add_dependency 'mini_magick'
  s.add_dependency 'rails', '>= 4.2', '< 6'

  s.add_development_dependency 'byebug'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'chromedriver-helper'
  s.add_development_dependency 'database_cleaner', '~> 1.3'
  s.add_development_dependency 'engine_cart', '~> 1.0'
  s.add_development_dependency 'rspec-rails', '~> 3.0'
  s.add_development_dependency 'rubocop', '~> 0.53.0'
  s.add_development_dependency 'rubocop-rspec', '~> 1.18.0'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'solr_wrapper'
end
