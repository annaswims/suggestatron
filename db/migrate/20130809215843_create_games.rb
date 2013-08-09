class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.integer :min_players
      t.integer :max_players
      t.integer :duration
      t.integer :genre_id
      t.integer :play_style_id

      t.timestamps
    end
  end
end
