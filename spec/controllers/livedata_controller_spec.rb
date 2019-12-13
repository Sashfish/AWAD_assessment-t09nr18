# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LivedataController, type: :controller do
      let(:valid_session) { {} }
describe 'live weather is displayed' do
    it 'shows the weather' do
        get :index, params: {}, session: valid_session
        expect(response).to render_template(:index)
    end
end
end
