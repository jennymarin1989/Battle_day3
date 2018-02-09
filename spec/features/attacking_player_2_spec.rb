require 'spec_helper'

RSpec.feature "attack confirmation", :type => :feature do
  scenario "attacking player 2 gives confirmation" do
    sign_in_and_play
    # click_button "attack"
    expect(page).to have_content ("Marcus attacks")
  end

  scenario "attacking player 2 reduces hit points" do
    sign_in_and_play
    click_button "attack"
    expect(page).to have_content "Jenny --- HP: 20"
  end
end
