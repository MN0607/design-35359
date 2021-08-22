class Room < ApplicationRecord
  belongs_to :user
  belongs_to :company

  validates :room_name, presence: true

end
