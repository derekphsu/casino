class Player < ApplicationRecord
  has_many :bet_histories
  has_many :player_balances
  has_many :player_transactions
end
