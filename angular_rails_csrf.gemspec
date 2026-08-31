# frozen_string_literal: true

require_relative 'lib/angular_rails_csrf/version'

Gem::Specification.new do |s|
  s.name        = 'angular_rails_csrf'
  s.version     = AngularRailsCsrf::VERSION
  s.authors     = ['James Sanders', 'Ilya Krukowski']
  s.email       = ['sanderjd@gmail.com', 'golosizpru@gmail.com']
  s.homepage    = 'https://github.com/bodrovis/angular_rails_csrf'
  s.summary     = 'Support for AngularJS $http service style CSRF protection in Rails'
  s.description = 'AngularJS style CSRF protection for Rails'
  s.license     = 'MIT'

  s.files = Dir['lib/**/*.rb', 'LICENSE.md', 'README.md', 'CHANGELOG.md', 'angular_rails_csrf.gemspec']
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 3.2'

  s.add_dependency 'railties', '>= 7', '< 9'

  s.metadata = {
    'rubygems_mfa_required' => 'true',
    'bug_tracker_uri' => 'https://github.com/bodrovis/angular_rails_csrf/issues',
    'changelog_uri' => 'https://github.com/bodrovis/angular_rails_csrf/blob/master/CHANGELOG.md',
    'documentation_uri' => 'https://github.com/bodrovis/angular_rails_csrf/blob/master/README.md',
    'homepage_uri' => s.homepage
  }
end
