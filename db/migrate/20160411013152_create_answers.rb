class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answer
      t.integer :specific_1
      t.integer :specific_2

      t.timestamps null: false
    end
  end
end
