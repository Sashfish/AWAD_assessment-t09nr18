# frozen_string_literal: true

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'

class ActiveSupport
  module TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

    fixtures :all

  # Add more helper methods to be used by all tests here...
    def sign_in(user:, password:)
      post user_session_path \
       'user[email]' => user.email,
       'user[password]' => password
    end
  end
end
