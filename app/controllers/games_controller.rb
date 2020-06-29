class GamesController < ApplicationController
  
  def index
    games = Game.all
    render json: GameSerializer.new(games)
  end

  def show
  end

  #new/save player-host with game creation
  #and create two teams

  def create
    # byebug
    game = Game.new(join_code: game_params[1])
    team_a = Team.new(team_letter: "a", game: game)
    team_b = Team.new(team_letter: "b", game: game)
    player1 = Player.new(name: game_params[0], game: game, team: team_a)

    game.host = player1

    game.save!
    player1.save!
    team_a.save!
    team_b.save!
    render json: GameSerializer.new(game)
  end

  private

  def game_params
    params.require([:host_name, :join_code])
  end
  
end