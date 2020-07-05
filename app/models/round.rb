class Round < ApplicationRecord
  belongs_to :game
  belongs_to :performer, foreign_key: "player_id", class_name: "Player"
  has_many :in_play_cards
  has_many :submissions, through: :in_play_cards
  
end
