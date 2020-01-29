class CreateCasinoTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :casino_transactions do |t|
      t.integer :bet_history_id
      t.float :net_gross

      t.timestamps
    end
  end
end
