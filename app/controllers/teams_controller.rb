class TeamsController < ApplicationController
  
  def index
    teams = Game.all
    render json: TeamSerializer.new(teams)
  end


  #new/save player-host with game creation
  #and create two teams

  def create
    team = Team.new(team_params)
    team.save
    render json: team
  end

  private

  def team_params
    params.require(:team).permit(:team_letter, :team_name, :score, :game_id)
  end
  
end