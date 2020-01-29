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
BetHistory.create(casino_id: 1, game_id: 1, user_id: 1, betsize: 5.00, profit: 0)
CasinosGames.create([{casino_id: 1, game_id: 1},
                     {casino_id: 1, game_id: 2},
                     {casino_id: 2, game_id: 2},
                     {casino_id: 2, game_id: 3},
                     {casino_id: 3, game_id: 1}])
UserBalance.create(user_id: 1, balance: 495)
UserTransaction.create(user_id: 1, casino_id: 1, transaction_type: 'deposit', amount: 500)
CasinoTransaction.create(bet_history_id: 1, net_gross: 5)
