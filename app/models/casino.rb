class Casino < ApplicationRecord
  has_many :casinos_games, class_name: "CasinosGames"
  has_many :games, :through => :casinos_games

  CASINO_NAMES = ["Bellagio", "Tommy's Backroom", "Pearl of Macau"]
  validates :name, inclusion: { in: CASINO_NAMES }
end
