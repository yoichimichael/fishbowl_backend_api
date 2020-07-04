class Player < ApplicationRecord
  
  has_many :submissions

  # could also make any of the below optional
  # belongs_to :team, optional: true
  
  belongs_to :game
  belongs_to :team
  has_one :hosted_game, foreign_key: "host_id", class_name: "Game" 
end
