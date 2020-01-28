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
Games.create([{name: "poker", type: "cards"},
              {name: "blackjack", type: "cards"},
              {name: "craps", type: "dice"}])
