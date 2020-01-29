class CreatePlayerBalances < ActiveRecord::Migration[6.0]
  def change
    create_table :player_balances do |t|
      t.integer :player_id
      t.integer :casino_id
      t.float :balance

      t.timestamps
    end
  end
end
