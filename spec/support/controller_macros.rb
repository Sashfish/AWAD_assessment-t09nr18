# frozen_string_literal: true

# https://matthewhoelter.com/2019/09/12/setting-up-and-testing-rails-6.0-with-rspec-factorybot-and-devise.html
FactoryBot.define do
  include Warden::Test::Helpers
  module ControllerMacros
  def login_user
    # Before each test, create and login the user
    before(:each) do
      @request.env['devise.mapping'] = Devise.mappings[:user]
      user = FactoryBot.create(:user)
      # user.confirm! # Or set a confirmed_at inside the factory. Only necessary if you are using the 'confirmable' module
      sign_in user
    end
  end

   def login_admin
     before(:each) do
       @request.env['devise.mapping'] = Devise.mappings[:admin]
       sign_in FactoryBot.create(:user) # Using factory bot as an example
     end
   end
end
end
