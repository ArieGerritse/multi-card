# class question
class Question
  attr_accessor :random_numbers

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def sum
    @number1 + @number2
  end

  def question_output
    "What is #{@number1} + #{@number2}?"
  end
end
