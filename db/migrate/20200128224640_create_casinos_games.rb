class CreateCasinosGames < ActiveRecord::Migration[6.0]
  def change
    create_table :casinos_games do |t|
      t.integer :casino_id
      t.integer :game_id

      t.timestamps
    end
  end
end
