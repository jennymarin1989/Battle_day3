require 'spec_helper'

RSpec.feature "Switching player's turn" do
  scenario "At the start of the game we can see player 1's turn" do
    sign_in_and_play
    expect(page).to have_content("Marcus attacks Jenny")
  end

  scenario "After player 1 attacks is player 2's turn" do
    sign_in_and_play
    click_button "attack"
    expect(page).not_to have_content("Marcus attacks Jenny")
    expect(page).to have_content("Jenny attacks Marcus")
  end
end
  
