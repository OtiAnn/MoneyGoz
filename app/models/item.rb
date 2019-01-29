# == Schema Information
#
# Table name: items
#
#  id           :bigint(8)        not null, primary key
#  item_type_id :bigint(8)
#  name         :string
#  price        :decimal(6, 2)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Item < ApplicationRecord
  belongs_to :item_type
  has_many   :payment_items 
end
