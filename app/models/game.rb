class Game < ApplicationRecord
  has_many :players
  has_many :teams
  has_many :rounds
  has_many :submissions
  belongs_to :host, class_name: "Player"
end
