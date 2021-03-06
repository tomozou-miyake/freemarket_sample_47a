class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :user, null: false,foreign_key: true
      t.references :item, null: false,foreign_key: true
      t.text       :comment
      t.timestamps
    end
  end
end
