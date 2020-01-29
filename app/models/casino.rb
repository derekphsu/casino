class Casino < ApplicationRecord
  has_many :games, :through casinos_games
end
