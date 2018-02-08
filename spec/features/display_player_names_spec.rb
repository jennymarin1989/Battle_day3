require 'spec_helper' #Fails if rspec/helper

# RSpec.feature "testing infraestructure", :type => :feature do
#   scenario "testing infraestructure page" do
#     visit "/"
#     expect(page).to have_text("Checking if is working")
#   end
# end

RSpec.feature "player names", :type => :feature do
  scenario "Enter player names" do
    sign_in_and_play
    expect(page).to have_content "Marcus\nJenny"
  end
end
