class GameController < ApplicationController
  def index
  end

  def throw
    game = Game.new(params[:sign])
    render json: { result: game.play, computer_choice: game.computer_choice }
  end
end
