# frozen_string_literal: true

require 'angular_rails_csrf/concern'

module AngularRailsCsrf
  class Railtie < ::Rails::Railtie
    initializer 'angular-rails-csrf' do |_app|
      ActiveSupport.on_load(:action_controller) do
        include AngularRailsCsrf::Concern
      end
    end

    initializer 'angular-rails-csrf.deprecation_notice' do |_app|
      unless Rails.env.test? || ENV['ANGULAR_RAILS_CSRF_SILENCE']
        ActiveSupport::Deprecation.warn(
          '[angular_rails_csrf] This gem is under passive maintenance and may be sunset in the future. ' \
          'Open an issue if you rely on it and want it to live on: https://github.com/bodrovis/angular_rails_csrf/issues'
        )
      end
    end
  end
end
