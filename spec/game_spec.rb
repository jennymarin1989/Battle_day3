require 'game'


describe Game do

  subject(:game) {described_class.new("carlos", "Jenny")}
  let(:player_1) {double(:player)}
  let(:player_2) {double(:player)}

  context "#initialize" do
    it "initalizes with player as argument" do
      expect(game.player_1).to be_an_instance_of Player
    end
  end


end
