require "rails_helper"

RSpec.feature "livedata", :type => :feature do
  scenario "Weather (at least one digit present on the page) should be displayed" do
    regex = /\d/
    visit "/weather"
    expect(page).to have_text(regex) #if @request is empty no numbers will be on the page
  end
end
