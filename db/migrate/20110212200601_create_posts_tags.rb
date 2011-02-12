class CreatePostsTags < ActiveRecord::Migration
  def self.up
    create_table :posts_tags, :id => false do |t|
      t.references :posts, :tags
      
      t.timestamps
    end
  end

  def self.down
    drop_table :posts_tags
  end
end
