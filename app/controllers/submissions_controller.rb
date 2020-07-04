class SubmissionsController < ApplicationController

  def create
    # byebug
    player_id = submission_params[0]
    game_id = submission_params[1]
    submissions = submission_params[2]

    submissions.each do |submission|
      Submission.create(content: submission, player_id: player_id, game_id: game_id)
    end

    player = Player.find(player_id)
    render json: SubmissionSerializer.new(player.submissions).to_serialized_json 
  end

  private

  def submission_params
    params.require([:player_id, :game_id, :submissions])
  end

end
