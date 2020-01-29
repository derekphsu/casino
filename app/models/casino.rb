class Casino < ApplicationRecord
  has_many :casinos_games, class_name: "CasinosGames"
  has_many :games, :through => :casinos_games
end
