# == Schema Information
#
# Table name: item_types
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ItemType < ApplicationRecord
  has_many :items
end
