class AddDigitals < ActiveRecord::Migration
  def self.up
    create_table :spree_dropboxeds do |t|
      t.integer :variant_id
      t.string :path
      t.timestamps
    end
    add_index :spree_dropboxeds, :variant_id

    create_table :spree_dropboxed_links, :force => true do |t|
      t.integer :dropboxed_id
      t.integer :line_item_id
      t.string  :secret
      t.integer :access_counter
      t.timestamps
    end
    add_index :spree_dropboxed_links, :dropboxed_id
    add_index :spree_dropboxed_links, :line_item_id
    add_index :spree_dropboxed_links, :secret
  end

  def self.down
    drop_table :spree_dropboxeds
    drop_table :spree_dropboxed_links
  end
end
