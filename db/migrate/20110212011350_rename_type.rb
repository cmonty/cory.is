class RenameType < ActiveRecord::Migration
  def self.up
    rename_column :categories, :type, :style
  end

  def self.down
    rename_colum :categories, :style, :type
  end
end
