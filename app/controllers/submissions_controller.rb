class SubmissionsController < ApplicationController

  def create
    # byebug
    player = Player.find(submission_params[0])
    game = Game.find(submission_params[1])
    submissions = submission_params[2]

    submissions.each do |submission|
      Submission.create(content: submission, player: player, game: game)
    end

    # round created after all players have submitted cards
    # first performer is randomized
    if game.submissions.size == game.players.size * game.cards_per_player
      round = Round.create(name: "Taboo", turn_part: "lobby", game: game, performer: game.players.sample)
      game.submissions.each{ |submission| round.submissions << submission }
    end

    render json: SubmissionSerializer.new(player.submissions).to_serialized_json 

    # byebug
  end

  private

  def submission_params
    params.require([:player_id, :game_id, :submissions])
  end

end
