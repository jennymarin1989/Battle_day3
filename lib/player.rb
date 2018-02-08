
class Player

attr_reader :name, :hit_points

  def initialize(name)
    @name=name
    @hit_points=30
  end

  def reduce_hit_points
    @hit_points -= 10
  end

  def attack(player)
    player.reduce_hit_points
  end
end
