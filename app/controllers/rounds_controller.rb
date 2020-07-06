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
    round = Round.find(params[:id])
    round.turn_part = "end"
    round.save
  end

  private

  # def round_params
  #   params.require(:round).permit(:id)
  # end

end
