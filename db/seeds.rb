# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

payment_types = PaymentType.create([
  { name: 'Cash'},
  { name: 'Debit Card'},
  { name: 'Credit Card' }
])

item_types = ItemType.create([
  { name: 'Food'},
  { name: 'Clothing'},
  { name: 'Housing'},
  { name: 'Transportation'},
  { name: 'Education'},
  { name: 'Entertainment'}
])
