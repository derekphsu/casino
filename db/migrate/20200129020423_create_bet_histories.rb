class CreateBetHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :bet_histories do |t|
      t.integer :player_id
      t.integer :casino_id
      t.integer :game_id
      t.float :betsize
      t.float :profit

      t.timestamps
    end
  end
end
