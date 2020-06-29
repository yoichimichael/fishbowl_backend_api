class Player < ApplicationRecord
  belongs_to :game

  # consider making the below optional
  # belongs_to :team, optional: true
  belongs_to :team

  has_one :hosted_game, foreign_key: "host_id", class_name: "Game" 
end
