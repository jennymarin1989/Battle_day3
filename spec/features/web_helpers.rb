
def sign_in_and_play
  visit "/"
  fill_in "name_1", with: "Marcus"
  fill_in "name_2", with: "Jenny"
  click_button "PREEEPPPPARREEE FOR BATTTLLLEEE"
end
