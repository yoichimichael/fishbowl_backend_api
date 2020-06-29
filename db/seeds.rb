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

# issue with seeding; had to comment out belongs_to association in Game class

game1 = Game.create!(join_code: "D4RR69")
game2 = Game.create!(join_code: "W24ZL0")
game3 = Game.create!(join_code: "IK56H3")
game4 = Game.create!(join_code: "HN48J1")

team_a = Team.create!(team_letter: "a", game_id: game1.id)
team_b = Team.create!(team_letter: "b", game_id: game1.id)

player1 = Player.create!(name: "Tarik", game_id: game1.id, team_id: team_a.id)
player2 = Player.create!(name: "Yoshiko", game_id: game1.id, team_id: team_a.id)
player3 = Player.create!(name: "Luis", game_id: game1.id, team_id: team_b.id)
player4 = Player.create!(name: "Donna", game_id: game1.id, team_id: team_b.id)

game1.update(host_id: player1.id)
game2.update(host_id: player2.id)
game3.update(host_id: player3.id)
game4.update(host_id: player4.id)

team_a.update!(team_name: "The Jets")
team_b.update!(team_name: "The Sharks")

# player1.update(game_id: game1.id)
# player2.update(game_id: game1.id)
# player3.update(game_id: game1.id)
# player4.update(game_id: game1.id)


# player1.update(team_id: team_a.id)
# player2.update(team_id: team_a.id)
# player3.update(team_id: team_b.id)
# player4.update(team_id: team_b.id)