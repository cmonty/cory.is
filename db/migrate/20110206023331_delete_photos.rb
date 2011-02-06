class DeletePhotos < ActiveRecord::Migration
  def self.up
    drop_table :photos
  end

  def self.down
    create_table :photos do |t|
      t.references :post
      t.string :path
      t.string :caption
      t.integer :width
      t.integer :height
      
      t.timestamps
    end
  end
end
