class DropTypes < ActiveRecord::Migration
  def self.up
    drop_table :types
  end

  def self.down
    create_table :types do |t|
      t.string :name
      t.string :slug
      
      t.timestamps
    end
  end
end
