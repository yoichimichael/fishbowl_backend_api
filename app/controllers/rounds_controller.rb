class RoundsController < ApplicationController

  def start_turn
    round = Round.find(params[:id])
    round.turn_part = "play"
    round.save
  end

  def countdown
    round = Round.find(params[:id])
    round.clock -= 1 
    round.save
  end

  def end_turn
    submission_ids = round_params[0]
    submission_ids.each do |id|
      in_play_card = InPlayCard.find_by(round_id: params[:id], submission_id: id)
      in_play_card.delete
    end

    byebug

    round = Round.find(params[:id])
    round.clock = 15
    round.turn_part = "end"
    round.save
  end

  private

  def round_params
    params.require([:submission_ids])
  end

end
