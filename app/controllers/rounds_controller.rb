class RoundsController < ApplicationController

  def update
    round = Round.find(params[:id])
    round.in_play = true
    round.save
  end

  private

  # def round_params
  #   params.require(:round).permit(:id)
  # end

end
