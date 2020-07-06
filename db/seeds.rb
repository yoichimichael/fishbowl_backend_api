# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Player.destroy_all
Team.destroy_all
Round.destroy_all
Submission.destroy_all
InPlayCard.destroy_all

# issue with seeding; had to comment out belongs_to association in Game class/ issue solved; look into optional associations Rails 5

# game1 = Game.create!(join_code: "D4RR69")
# game2 = Game.create!(join_code: "W24ZL0")
# game3 = Game.create!(join_code: "IK56H3")
# game4 = Game.create!(join_code: "HN48J1")

game1 = Game.new(join_code: "D4RR69")

team_a = Team.new(team_letter: "a", game: game1)
team_b = Team.new(team_letter: "b", game: game1)

player1 = Player.new(name: "Tarik", game: game1, team: team_a)

game1.host = player1

game1.save!
player1.save!
team_a.save!
team_b.save!

team_a.update!(team_name: "The Jets")
team_b.update!(team_name: "The Sharks")

player2 = Player.create!(name: "Yoshiko", game_id: game1.id, team_id: team_a.id)
player3 = Player.create!(name: "Luis", game_id: game1.id, team_id: team_b.id)
player4 = Player.create!(name: "Donna", game_id: game1.id, team_id: team_b.id)

round1 = Round.create!(name: "Taboo", turn_part: "lobby", game: game1, performer: player1)
round2 = Round.create!(name: "Charades", turn_part: "lobby", game: game1, performer: player2)
round3 = Round.create!(name: "One Word", turn_part: "lobby", game: game1, performer: player3)

submission1 = Submission.create!(content: "dog", player: player1, game: game1)
submission2 = Submission.create!(content: "cat", player: player1, game: game1)
submission3 = Submission.create!(content: "watermelon", player: player2, game: game1)
submission4 = Submission.create!(content: "the sky", player: player2, game: game1)
submission5 = Submission.create!(content: "helicopters", player: player3, game: game1)
submission6 = Submission.create!(content: "a long walk", player: player3, game: game1)
submission7 = Submission.create!(content: "james bond", player: player4, game: game1)
submission8 = Submission.create!(content: "horror films", player: player4, game: game1)

InPlayCard.create!(round: round1, submission: submission1)
InPlayCard.create!(round: round1, submission: submission2)
InPlayCard.create!(round: round1, submission: submission3)
InPlayCard.create!(round: round1, submission: submission4)
InPlayCard.create!(round: round1, submission: submission5)
InPlayCard.create!(round: round1, submission: submission6)
InPlayCard.create!(round: round1, submission: submission7)
InPlayCard.create!(round: round1, submission: submission8)
