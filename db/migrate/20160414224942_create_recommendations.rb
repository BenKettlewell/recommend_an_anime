class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.belongs_to :anime, index: true, foreign_key: true
      t.belongs_to :answer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
