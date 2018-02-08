require 'player'

describe Player do
  subject(:player_1){described_class.new("Peter")}

  context "#initialize" do
    it "initializes with player names" do
      expect(player_1).to respond_to(:name)
    end
  end
end
