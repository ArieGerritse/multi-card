require './question.rb'

# Turn class
class Turn
  def initialize(playing, waiting)
    @playing = playing
    @waiting = waiting
    @round_question = Question.new
  end

  def show_question
    puts 'NEXT PLAYERS TURN'
    puts "#{@playing.player_name}: #{@round_question.question_output}"
  end

  def answer
    @answer = gets.chomp
  end

  def check_answer
    if @answer.to_i == @round_question.sum
      puts 'Correct! No lives lost!'
    else
      puts 'NOPE! One lives lost!'
      @playing.lose_life
    end
  end
end
