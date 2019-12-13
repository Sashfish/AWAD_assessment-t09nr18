# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ViewordersController, type: :controller do
      let(:valid_session) { {} }
      login_admin
describe 'admins can view orders' do
    it 'displays orders to admins' do
        get :index, params: {}, session: valid_session
        expect(response).to be_successful
    end
end
end
