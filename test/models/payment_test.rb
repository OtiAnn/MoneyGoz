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

require 'test_helper'

class PaymentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
