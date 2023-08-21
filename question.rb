class Question
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end
  def ask_question
    puts "What does #{@num1} plus #{@num2} equal?"
  end
  def check_answer(answer)
    if answer == @num1 + @num2
      puts "YES! You are correct. You are so smart."
      return true
    else
      puts "Seriously? No! You are wrong."
      return false
    end
  end
end

# question1 = Question.new
# question1.ask_question
# answer = gets.chomp.to_i
# question1.check_answer(answer)