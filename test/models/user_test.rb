require 'test_helper'

class UserTest < ActiveSupport::TestCase
   include Devise::Test::ControllerHelpers
   sign_in users(:one)
   get :edit, id: users(:two)
   assert_redirected_to root_url
end
