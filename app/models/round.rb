class Round < ApplicationRecord
  has_many :in_play_cards
  has_many :submissions, through: :in_play_cards
  belongs_to :game
  belongs_to :performer, class_name: "Player"
end
