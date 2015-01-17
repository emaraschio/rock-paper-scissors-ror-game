class Game
  attr_accessor :computer_choice, :player_choice

  def initialize(player_choice)
    @computer_choice = ["rock","paper","scissors"].shuffle.first
    @player_choice = player_choice
  end

  def play
    case[@computer_choice,@player_choice]
      when ["rock","paper"],["paper","scissors"],["scissors","rock"]
      "You win :D"
      when ["rock","rock"],["paper","paper"],["scissors","scissors"]
      "You tide :|"
    else
      "You lose :("
    end
  end

end
