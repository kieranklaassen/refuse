# == Schema Information
#
# Table name: rooms
#
#  id         :integer          not null, primary key
#  name       :string
#  purpose    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Room < ApplicationRecord
  has_many :messages
  has_many :users
  has_many :cues
end
