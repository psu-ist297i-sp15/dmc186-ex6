class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :topics, :title, :name
  end
end
