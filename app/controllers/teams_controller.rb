class TeamsController < ApplicationController
  
  def update
    team_a = Team.find(team_params[0])
    team_b = Team.find(team_params[1])
    team_a.update(team_name: team_params[2])
    team_b.update(team_name: team_params[3])
    team_a.save
    team_b.save
  end

  private

  def team_params
    params.require([:team_a_id, :team_b_id, :team_a_name, :team_b_name])
  end
  
end