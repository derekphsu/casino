class CreateLoyalties < ActiveRecord::Migration[6.0]
  def change
    create_table :loyalties do |t|
      t.integer :player_id
      t.integer :casino_id

      t.timestamps
    end
  end
end
