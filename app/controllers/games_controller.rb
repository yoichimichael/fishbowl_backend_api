class GamesController < ApplicationController
  
  def index
    games = Game.all
    render json: GameSerializer.new(games).to_serialized_json
  end

  def show
    game = Game.find(params[:id])
    render json: GameSerializer.new(game).to_serialized_json
  end

  def flash
    game = Game.find(params[:id])
    game.card_flash = game_params[2]
    game.save!
  end

  def unflash
    game = Game.find(params[:id])
    game.card_flash = nil
    game.save!
  end

  #new/save player-host with game creation
  #and create two teams

  def create
    # byebug
    game = Game.new(join_code: game_params[1])
    team_a = Team.new(team_letter: "a", game: game)
    team_b = Team.new(team_letter: "b", game: game)
    player = Player.new(name: game_params[0], game: game, team: team_a)

    game.host = player

    # hard-coding card num; later, will add player-choice 
    game.cards_per_player = 2 

    game.save!
    player.save!
    team_a.save!
    team_b.save!
    
    render json: GameSerializer.new(game).to_serialized_json
  end

  private

  def game_params
    params.require([:host_name, :join_code, :flash_card])
  end
  
end