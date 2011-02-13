class AddCachedSlug < ActiveRecord::Migration
  def self.up
    add_column :posts, :cached_slug, :string
    add_index :posts, :cached_slug, :unique => true
  end

  def self.down
    remove_column :posts, :cached_slug
  end
end
