
class Game

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1=Player.new(player_1)
    @player_2=Player.new(player_2)
    @current_turn = @player_1
  end

  def attack(player)
    player.reduce_hit_points
  end


  # def switch_turns
  #   if @current_player == @player_1
  #     @current_player = @player_2
  #   elsif @current_player == @player_2
  #     @current_player = @player_1
  #   end
  # end
end
