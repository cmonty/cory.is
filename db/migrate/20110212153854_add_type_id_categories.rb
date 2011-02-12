class AddTypeIdCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :type_id, :integer
  end

  def self.down
    remove_column :categories, :type_id
  end
end
