class PlayersController < ApplicationController
  
  def index
    players = Player.all
    render json: PlayerSerializer.new(players).to_serialized_json
  end
  
  def create
    # byebug
    game = Game.find_by(join_code: player_params[1])
    player = Player.new(name: player_params[0], game: game)
    if game.teams[0].players.count <= game.teams[1].players.count
      player.team = game.teams[0]
    else
      player.team = game.teams[1] 
    end
    player.save
    render json: PlayerSerializer.new(player).to_serialized_json
  end

  private

  def player_params
    params.require([:name, :join_code])
  end
  
end