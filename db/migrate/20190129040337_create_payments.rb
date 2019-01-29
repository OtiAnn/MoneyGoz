class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.references :user, foreign_key: true
      t.references :payment_type, foreign_key: true
      t.decimal :tip, precision: 6, scale: 2
      t.decimal :tax, precision: 6, scale: 2
      t.datetime :payment_date

      t.timestamps
    end
  end
end
