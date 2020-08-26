ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'test_helpers/sign_in_helper'

module ActiveSupport
  class TestCase
    include GrapeRouteHelpers::NamedRouteMatcher
    include FactoryBot::Syntax::Methods
    include SignInHelper
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Add more helper methods to be used by all tests here...
  end
end
