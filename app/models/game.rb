class Game < ApplicationRecord
  has_many :casinos_games, class_name: "CasinosGames"
  has_many :casinos, :through => :casinos_games
end
