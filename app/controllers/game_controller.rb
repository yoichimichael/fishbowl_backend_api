class GameController < ApplicationController
  
  def create
    game = Game.new(game_params)
    game.save
    render json: game
  end

  private

  def game_params
    params.require(:game).permit(:join_code, :host_id)
  end
  
end