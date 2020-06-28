# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
Player.destroy_all

game1 = Game.create(join_code: "D4RR69")
game2 = Game.create(join_code: "W24ZL0")
game3 = Game.create(join_code: "IK56H3")
game4 = Game.create(join_code: "HN48J1")

player1 = Player.create(name: "Tarik", game_id: game1.id)
player2 = Player.create(name: "Yoshiko", game_id: game1.id)
player3 = Player.create(name: "Luis", game_id: game1.id)
player4 = Player.create(name: "Donna", game_id: game1.id)

game1.update(host_id: player1.id)
game2.update(host_id: player2.id)
game3.update(host_id: player3.id)
game4.update(host_id: player4.id)

