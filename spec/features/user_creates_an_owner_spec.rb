require 'spec_helper'

feature 'User creates an owner' do

  it "with valid attributes" do
    visit new_owner_path
    fill_in "First Name", with: "Kevin"
    fill_in "Last Name", with: "Kwon"
    fill_in "Email", with: "kwon@email.com"
    fill_in "Company Name", with: "Kwon Inc."
    click_on "Create Owner"

    expect(page).to have_content "First Name"
  end

  it "with invalid attributes and sees errors" do
    visit new_owner_path
    click_on "Create Owner"
    expect(page).to have_content "Could not save owner"
  end



end