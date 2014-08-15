class CreateItemRequestItems < ActiveRecord::Migration
  def change
    create_table :item_request_items do |t|
      t.belongs_to :item,         null: false
      t.belongs_to :item_request, null: false

      t.timestamps
    end
    add_index :item_request_items, [:item_id, :item_request_id], unique: true
  end
end
