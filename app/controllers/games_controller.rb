class GamesController < ApplicationController
  
  def index
    games = Game.all
    render json: GameSerializer.new(games)
  end


  #new/save player-host with game creation
  #and create two teams

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