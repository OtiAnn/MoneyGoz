class CreatePaymentItems < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_items do |t|
      t.references :payment, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
