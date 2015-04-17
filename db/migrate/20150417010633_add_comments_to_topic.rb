class AddCommentsToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :comments, :text
  end
end
