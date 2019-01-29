# == Schema Information
#
# Table name: payment_items
#
#  id         :bigint(8)        not null, primary key
#  payment_id :bigint(8)
#  item_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PaymentItem < ApplicationRecord
  belongs_to :payment
  belongs_to :item
end
