class CreateItemRequests < ActiveRecord::Migration
  def change
    create_table :item_requests do |t|
      t.string :email, null: false
      t.text :message

      t.timestamps
    end
  end
end
