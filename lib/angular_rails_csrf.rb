# frozen_string_literal: true

require 'angular_rails_csrf/railtie'

module AngularRailsCsrf
  def self.deprecator
    @deprecator ||= ActiveSupport::Deprecation.new('7.0', 'angular_rails_csrf')
  end
end