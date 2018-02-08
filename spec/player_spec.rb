require 'player'

describe Player do
  subject(:player_1){described_class.new("Peter")}
  subject(:player_2){described_class.new("Gallino")}

  context "#initialize" do
    it "initializes with player names" do
      expect(player_1).to respond_to(:name)
    end
    it "initializes with player hit points" do
      expect(player_1).to respond_to(:hit_points)
    end
  end

  context "#reduce_hit_points" do
    it "reduces player 2 points" do
    expect{player_1.reduce_hit_points}.to change{player_1.hit_points}.by(-10)
    end
  end

  context "#attack" do 
    it "reduces p2's hit points by 10" do 
      expect { player_1.attack(player_2)}.to change {player_2.hit_points}.by(-10)
    end
  end
end
