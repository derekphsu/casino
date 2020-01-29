# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Casino.create([{name: "Bellagio",         location: "Vegas"}, 
               {name: "Tommy's Backroom", location: "SF"}, 
               {name: "Pearl of Macau",   location: "Macau"}])
Game.create([{name: "poker",      game_type: "cards"},
             {name: "blackjack",  game_type: "cards"},
             {name: "craps",      game_type: "dice"}])
Player.create(name: "Derek Hsu")
Loyalty.create([{player_id: 1, casino_id: 1}, 
                {player_id: 1, casino_id: 2}])
Hand.create(casino_id: 1, game_id: 1)

# CasinoTransaction player_id:integer casino_id:integer hand_id:integer earning:integer



# rails generate model CasinoTransaction player_id:integer casino_id:integer hand_id:integer earning:integer
