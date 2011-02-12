class RenameTypeId < ActiveRecord::Migration
  def self.up
    rename_column :categories, :type_id, :style_id
  end

  def self.down
    rename_column :categories, :style_id, :type_id
  end
end
