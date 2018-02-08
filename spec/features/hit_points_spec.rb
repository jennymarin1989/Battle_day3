require 'spec_helper'

RSpec.feature "Displaying hit points", :type => :feature do
  scenario "Displaying player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "HP: 30"
  end
end
