class FixColumnNameAgain < ActiveRecord::Migration
  def change
    rename_column :topics, :name, :title
  end
end
