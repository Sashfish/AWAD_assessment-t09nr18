# frozen_string_literal: true

require 'test_helper'

class RendersTest < ActionDispatch::IntegrationTest
  test '/map renders' do
    get '/map'
    assert_response :success
  end

  test 'home renders' do
    get '/'
    assert_response :success
  end

  test '/charts renders' do
    get '/charts'
    assert_response :success
  end
end
