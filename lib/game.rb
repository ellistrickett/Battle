class Game

  attr_reader :player_1, :player_2, :current_turn, :opponent

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
    @opponent = player_2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    if @current_turn == @player_1
      @current_turn = @player_2
      @opponent = @player_1
    else
      @current_turn = @player_1
      @opponent = @player_2
    end
  end
end
