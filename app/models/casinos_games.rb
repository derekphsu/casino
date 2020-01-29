class CasinosGames < ApplicationRecord
  belongs_to :casino
  belongs_to :game
  validates_uniqueness_of :casino_id, scope: :game_id
end
