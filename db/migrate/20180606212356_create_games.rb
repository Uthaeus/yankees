class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :opponent
      t.date :game_date
      t.string :location
      t.string :result
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end
