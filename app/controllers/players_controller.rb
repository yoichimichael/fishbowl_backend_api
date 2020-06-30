class PlayersController < ApplicationController
  
  def index
    players = Player.all
    render json: PlayerSerializer.new(players)
  end
  
  def create
    player = Player.new(player_params)
    player.save
    render json: pame
  end

  private

  def player_params
    params.require(:player).permit(:name, :game_id, :team_id)
  end
  
end