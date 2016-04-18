class RemoveSpecificsFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :specific_1, :integer
    remove_column :answers, :specific_2, :integer
  end
end
