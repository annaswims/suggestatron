class CreatePlayStyles < ActiveRecord::Migration
  def change
    create_table :play_styles do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
