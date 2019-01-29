class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :item_type, foreign_key: true
      t.string :name
      t.decimal :price, precision: 6, scale: 2

      t.timestamps
    end
  end
end
