class DropCategoriesPosts < ActiveRecord::Migration
  def self.up
    drop_table :categories_posts
  end

  def self.down
    create_table :categories_posts, :id => false do |t|
      t.references :post, :category
    end
  end
end
