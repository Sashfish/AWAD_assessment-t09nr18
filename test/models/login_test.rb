# frozen_string_literal: true

require 'test_helper'

class LoginTest < ActionDispatch::IntegrationTest
  def setup
    @email = 'reeee@example.com'
    @pass = 'password'
    @user = User.create(email: @email, password: @pass)
  end

  test 'successful login of confirmed user' do
    sign_in(user: @user, password: @pass)
    assert_redirected_to '/'
  end

  test 'unsuccessful login of confirmed user with wrong password' do
    sign_in(user: @user, password: 'wrong password')
    get '/'
    assert_response :success
  end
end
