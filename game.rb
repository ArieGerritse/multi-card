require './player.rb'
require './turn.rb'

# Game class
class Game
  attr_reader :player1
  attr_reader :player2

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @turn = 1
  end

  def current_score
    puts "Player 1: #{@player1.lives}/3 vs. Player 2: #{@player2.lives}/3"
  end

  def game_end
    winner = if @player1.lives.zero?
               @player2.player_name
             else
               @player1.player_name
             end
    puts "GAME OVER #{winner} WINS!"
  end

  def game
    while @player1.lives > 0 && @player2.lives > 0
      this_turn = if @turn.odd?
                    Turn.new(@player1, @player2)
                  else
                    Turn.new(@player2, player1)
                  end
      this_turn.show_question
      this_turn.answer
      this_turn.check_answer
      current_score
      @turn += 1
    end
    game_end
  end
end

game = Game.new
game.game
