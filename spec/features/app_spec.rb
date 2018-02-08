require 'spec_helper' #Fails if rspec/helper

# RSpec.feature "testing infraestructure", :type => :feature do
#   scenario "testing infraestructure page" do
#     visit "/"
#     expect(page).to have_text("Checking if is working")
#   end
# end

RSpec.feature "player names", :type => :feature do
  scenario "Enter player names" do
    visit "/"
    fill_in "name_1", with: "Marcus"
    fill_in "name_2", with: "Jenny"
    click_button "PREEEPPPPARREEE FOR BATTTLLLEEE"
    expect(page).to have_content "Marcus\nJenny"
  end
end
