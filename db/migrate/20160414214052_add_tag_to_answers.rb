class AddTagToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :tag_id, :integer
  end
end
