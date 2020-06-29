class Game < ApplicationRecord
  has_many :players
  has_many :teams

  # necessary to comment out below association for seeding to work
  belongs_to :host, class_name: "Player"
end
