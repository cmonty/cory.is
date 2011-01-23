class AddPhotos < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.primary_key :id
      t.integer :post_id
      t.string :path
      t.string :caption
      
      t.timestamps
    end
  end

  def self.down
  end
end
