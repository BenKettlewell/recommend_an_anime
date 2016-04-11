class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|
      t.string :name
      t.integer :mal_id

      t.timestamps null: false
    end
    add_index :animes, :mal_id, unique: true
  end
end
