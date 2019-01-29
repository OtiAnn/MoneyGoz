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

require 'test_helper'

class PaymentItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
