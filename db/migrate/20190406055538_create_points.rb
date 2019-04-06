class CreatePoints < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.references :user, null: false,foreign_key: true
      t.references :item, null: false,foreign_key: true
      t.integer    :value, null: false
      t.timestamps
    end
  end
end
