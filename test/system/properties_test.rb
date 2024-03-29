# frozen_string_literal: true

require 'application_system_test_case'

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test 'visiting the index' do
    visit properties_url
    assert_selector 'h1', text: 'Properties'
  end

  test 'creating a Property' do
    visit properties_url
    click_on 'New Property'

    fill_in 'Address', with: @property.address
    fill_in 'Councilarea', with: @property.councilarea
    fill_in 'Lattitude', with: @property.lattitude
    fill_in 'Longitude', with: @property.longitude
    fill_in 'Price', with: @property.price
    fill_in 'Regionname', with: @property.regionname
    fill_in 'Suburb', with: @property.suburb
    fill_in 'Type', with: @property.type
    fill_in 'Yearbuilt', with: @property.yearbuilt
    click_on 'Create Property'

    assert_text 'Property was successfully created'
    click_on 'Back'
  end

  test 'updating a Property' do
    visit properties_url
    click_on 'Edit', match: :first

    fill_in 'Address', with: @property.address
    fill_in 'Councilarea', with: @property.councilarea
    fill_in 'Lattitude', with: @property.lattitude
    fill_in 'Longitude', with: @property.longitude
    fill_in 'Price', with: @property.price
    fill_in 'Regionname', with: @property.regionname
    fill_in 'Suburb', with: @property.suburb
    fill_in 'Type', with: @property.type
    fill_in 'Yearbuilt', with: @property.yearbuilt
    click_on 'Update Property'

    assert_text 'Property was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Property' do
    visit properties_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Property was successfully destroyed'
  end
end
