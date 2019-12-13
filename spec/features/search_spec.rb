# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Search', type: :feature do
  scenario 'Search redirects to properties' do
    user = FactoryBot.create(:user)
    Property.create(
      suburb: 'whatever',
      address: 'Turner street',
      ptype: 'h',
      price: 10000,
      yearbuilt: 1900,
      councilarea: 'whatever',
      lattitude: 1,
      longitude: 1,
      regionname: 'whatever')
    login_as(user, scope: :user)

    visit '/'

    fill_in 'Search', with:'Turner'
    click_button 'Search'

    expect(page).to have_text('Turner')
  end
end
