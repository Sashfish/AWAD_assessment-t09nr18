require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe PropertiesController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # Article. As you add validations to Article, be sure to adjust the attributes here as well.
    let(:valid_attributes) {{ :address => "whatever avenue", :ptype => "h", :price => "1" }}

    let(:valid_session) { {} }

    describe "GET #show" do
        it "returns a success response" do
            Property.create! valid_attributes
            get :show, params: {:id => 1}, session: valid_session
            expect(response).to have_http_status(302) # be_successful expects a HTTP Status code of 200
            # expect(response).to have_http_status(302) # Expects a HTTP Status code of 302
        end
    end
end
