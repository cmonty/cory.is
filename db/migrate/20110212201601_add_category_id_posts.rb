class AddCategoryIdPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :category_id, :integer
  end

  def self.down
    drop_column :posts, :category_id
  end
end
