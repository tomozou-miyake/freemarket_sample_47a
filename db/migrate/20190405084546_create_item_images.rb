class CreateItemImages < ActiveRecord::Migration[5.0]
  def change
    create_table :item_images do |t|
      t.string :name
      t.integer :main
      t.timestamps
    end
  end
end
