require 'game'
require 'player'

describe Game do

  subject(:game) {described_class.new("carlos", "Jenny")}
  let(:player_1) {double(:player)}
  let(:player_2) { Player.new("Jenny")}

  context "#initialize" do
    it "initalizes with player as argument" do
      expect(game.player_1).to be_an_instance_of Player
    end

    it "sets current turn to player 1" do
      expect(game.current_turn).to eq player_1
    end
  end

  context "#attack" do
    it "reduces player's hit points by 10" do
      expect { game.attack(player_2)}.to change {player_2.hit_points}.by (-10)
    end
  end
end
