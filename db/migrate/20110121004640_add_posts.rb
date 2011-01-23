class AddPosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.text :body
      t.string :title
      t.string :slug
      t.boolean :public
      
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end