class Player < ApplicationRecord
  belongs_to :game
  belongs_to :team
  has_one :hosted_game, foreign_key: "host_id", class_name: "Game" 
end
