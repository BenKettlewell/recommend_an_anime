class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :question, index: true, foreign_key: true
      t.belongs_to :answer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
