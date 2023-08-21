# Description
# Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Details
# Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

# The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

#Task 1
# class Player, class Game, class questions.
#  Each player should have a name and 3 lives.
#class question will hold the quetstions and answers
#class game should hold both of the other two clases

#Task 2
# What is the role for each class?
#Player will hold the name and lives
#Question will hold the questions and answers
#Game will hold the player and question classes

# Instruction
# State: Storing data describing themselves (variables)
# Behavior: Defining actions that can be performed on them (methods)
# Instruction
# Write down the methods for each class while also speaking to the following points:
# What information is relevant to each class?
              #Player will hold the name and lives
# What will they need in order to be initialized?
# What public methods will be defined on them?
              #player will have a play method and calculate scores method
              #question will have a method to generate the questions and answers
              #game will have a method to start the game, end the game, game over, new turn- this will manage who the current player is and the current question

#create a class called player and instantiate it with name and lives=3
#2 create a class called question and instantiate it with two random numbers between 1 and 20
#3 create a class called game and instantiate it with the player class and question class
#4 create a method called play and calculate scores
#create a method called game over
# create a method called new turn
# create a method called start game
# create a method called end game
# create a method called game over

require './player'
require './question'

class Game
  def initialize
    @player1 = Player.new("player1")
    puts @player1.name
    @player2 = Player.new("player2")
    @current_player = @player1
  end
  def start_game
    while @player1.lives > 0 && @player2.lives > 0
      puts "----- NEW TURN -----"
      @question = Question.new
      @question.ask_question
      answer = gets.chomp.to_i
      @question.check_answer(answer)
      if @question.check_answer(answer) == false
        @current_player.calculate_score
      end 
      if @player1.lives == 0 || @player2.lives == 0
        end_game
    end
      puts "P1: #{@player1.get_lives}/3 vs P2: #{@player2.get_lives}/3"
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end
  end

      def end_game
        winner = @player1.get_lives > 0 ? @player1 : @player2
        loser = @player1.get_lives> 0 ? @player2 : @player1
        puts "----- GAME OVER -----"
        puts "Congratulations, #{winner.name}! You won with #{winner.get_lives} lives remaining."
        puts "#{loser.name}, better luck next time!"
      end

end


