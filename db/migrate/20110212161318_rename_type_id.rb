class RenameTypeId < ActiveRecord::Migration
  def self.up
    rename :categories, :type_id, :style_id
  end

  def self.down
    rename :categories, :style_id, :type_id
  end
end
