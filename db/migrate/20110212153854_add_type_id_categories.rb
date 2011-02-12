class AddTypeIdCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :type_id, :integer
    remove_column :categories, :style
  end

  def self.down
    remove_column :categories, :type_id
    add_column :categories, :style, :string
  end
end
