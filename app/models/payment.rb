# == Schema Information
#
# Table name: payments
#
#  id              :bigint(8)        not null, primary key
#  user_id         :bigint(8)
#  payment_type_id :bigint(8)
#  tip             :decimal(6, 2)
#  tax             :decimal(6, 2)
#  payment_date    :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :payment_type
  has_many   :payment_items
end
