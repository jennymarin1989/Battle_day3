require 'spec_helper'

RSpec.feature "Displaying hit points", :type => :feature do
  scenario "Displaying player 2 hit points" do
    visit "/"
    fill_in :name_1, with: "Marcus"
    fill_in :name_2, with: "Jenny"
    click_button "PREEEPPPPARREEE FOR BATTTLLLEEE"
    expect(page).to have_content "HP: 30"
  end
end
