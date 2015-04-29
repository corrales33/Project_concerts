class AddColumnLikes < ActiveRecord::Migration
  def change
  	add_column :concerts, :likes, :integer, :default => 0
  end
end
