require 'spec_helper'

RSpec.feature "Displaying hit points", :type => :feature do
  DEFAULT_HITPOINTS = 30
  scenario "Displaying player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "HP: #{DEFAULT_HITPOINTS}"
  end
end
