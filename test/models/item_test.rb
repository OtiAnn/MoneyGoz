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

require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
