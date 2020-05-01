
class Player
  attr_reader :name, :hp, :game

  DEFAULT_HIT_POINTS = 100

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= 10
  end 
end
