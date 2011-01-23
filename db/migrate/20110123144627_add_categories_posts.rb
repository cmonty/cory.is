class AddCategoriesPosts < ActiveRecord::Migration
  def self.up
    create_table :categories_posts do |t|
      t.references :post
      t.references :category
      
      t.timestamps
    end
  end

  def self.down
    drop_table :categories_posts
  end
end
