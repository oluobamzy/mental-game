class Player
  attr_accessor :name, :lives
def initialize(name)
  @name = name
  @lives = 3
end
def calculate_score
  @lives -= 1
end
 def game_over
    if @lives == 0
      puts "----- GAME OVER -----"
      puts "Good bye!"
    end
  end
  def get_lives
    return @lives
  end
end

# # player1 = Player.new("player1")
# # player2 = Player.new("player2")
# # puts player1.name
# # puts player1.lives
