# player class
class Player
  attr_accessor :lives
  attr_accessor :player_name

  def initialize(player_id)
    @lives = 3
    @player_name = "Player #{player_id}"
  end

  def lose_life
    @lives -= 1
  end
end
