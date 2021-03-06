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
    # team = Team.find(game_params[3])
    performer = game.rounds.last.performer

    game.card_flash = game_params[2]
    performer.turn_score += 1
    # team.score += 1

    game.save!
    performer.save!
    # team.save!
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
    team_a = Team.new(team_letter: "a", game: game, score: 0)
    team_b = Team.new(team_letter: "b", game: game, score: 0)
    player = Player.new(name: game_params[0], game: game, team: team_a, turn_score: 0)

    game.host = player

    # hard-coding card num; later, will add player-choice 
    game.cards_per_player = 4 

    game.save!
    player.save!
    team_a.save!
    team_b.save!
    
    render json: GameSerializer.new(game).to_serialized_json
  end

  private

  def game_params
    params.require([:host_name, :join_code, :flash_card, :team_id])
  end
  
end