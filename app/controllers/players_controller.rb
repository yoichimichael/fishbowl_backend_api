class PlayersController < ApplicationController
  
  def index
    players = Player.all
    render json: PlayerSerializer.new(players).to_serialized_json
  end

  # def show
  #   player = Player.find(params[:id])
  #   render json: PlayerSerializer.new(player).to_serialized_json
  # end
  
  def create
    # byebug
    game = Game.find_by(join_code: player_params[1])
    player = Player.new(name: player_params[0], game: game, turn_score: 0)

    if game.teams[0].players.count <= game.teams[1].players.count
      player.team = game.teams[0]
    else
      player.team = game.teams[1] 
    end

    player.save
    render json: PlayerSerializer.new(player).to_serialized_json
  end

  def update
    player = Player.find(player_params[2])
    team_a = Team.find(player_params[3])
    team_b = Team.find(player_params[4])

    if player.team.team_letter == "a"
      player.update(team: team_b)
    else
      player.update(team: team_a)
    end

    player.save
    render json: PlayerSerializer.new(player).to_serialized_json
  end

  private

  def player_params
    params.require([:name, :join_code, :player_id, :team_a_id, :team_b_id])
  end
  
end