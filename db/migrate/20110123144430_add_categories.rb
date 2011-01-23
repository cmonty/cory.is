class AddCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :title
      t.string :slug
      t.string :type

      t.timestamps
    end  
  end

  def self.down
    drop_table :categories
  end
end
