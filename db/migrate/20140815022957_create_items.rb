class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :title,       null: false
      t.text :description, null: false
      t.decimal :price, precision: 10, scale: 2, null: false

      t.timestamps
    end
  end
end
