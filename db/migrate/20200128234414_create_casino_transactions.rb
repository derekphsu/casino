class CreateCasinoTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :casino_transactions do |t|
      t.integer :player_id
      t.integer :casino_id
      t.integer :hand_id
      t.integer :earning

      t.timestamps
    end
  end
end
