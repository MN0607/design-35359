class Design < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validate :image_presence

  with_options presence: true do
    validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :title
    validates :explanation
  end

  def image_presence
    errors.add(:image, "can't be blank") unless image.attached?
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
