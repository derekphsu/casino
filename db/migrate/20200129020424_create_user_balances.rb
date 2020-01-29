class CreateUserBalances < ActiveRecord::Migration[6.0]
  def change
    create_table :user_balances do |t|
      t.integer :user_id
      t.float :balance

      t.timestamps
    end
  end
end
