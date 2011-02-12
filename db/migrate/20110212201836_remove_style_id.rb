class RemoveStyleId < ActiveRecord::Migration
  def self.up
    remove_column :categories, :style_id
  end

  def self.down
    add_column :categories, :style_id, :integer
  end
end
