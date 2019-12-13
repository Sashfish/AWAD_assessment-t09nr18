#https://matthewhoelter.com/2019/09/12/setting-up-and-testing-rails-6.0-with-rspec-factorybot-and-devise.html
require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe PropertiesController, type: :controller do

    login_user

    let(:valid_attributes) {{ :address => "whatever avenue", :ptype => "h", :price => "1" }}

    let(:valid_session) { {} }

    describe "GET #show" do
        it "returns a success response" do
            Property.create! valid_attributes
            get :show, params: {:id => 1}, session: valid_session
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
            # expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end
end
