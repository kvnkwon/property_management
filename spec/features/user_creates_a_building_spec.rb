require 'spec_helper'

feature 'User creates a building' do

  it "with valid attributes" do
    visit new_building_path
    fill_in "Street Address", with: "33 Harrison Ave"
    fill_in "City", with: "Boston"
    select('MA', from: 'State')
    fill_in "Postal Code", with: "02201"
    fill_in "Description", with: "Launch Academy's Building"
    click_on "Create Building"

    expect(page).to have_content "Street Address"
  end

  it "with invalid attributes and sees errors" do
    visit new_building_path
    click_on "Create Building"
    expect(page).to have_content "Could not save building"
  end

end
