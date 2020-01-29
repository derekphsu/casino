class CreateUserTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_transactions do |t|
      t.integer :user_id
      t.integer :casino_id
      t.string :transaction_type
      t.float :amount

      t.timestamps
    end
  end
end
