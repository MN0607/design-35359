class Company < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  with_options presence: true do
    with_options format: { with: /\A[a-zA-Z0-9,.]+\z/, message: 'is invalid. Enter it as follows (e.g. RiceIsDessert,Inc.)' } do
      validates :company_name
    end
    with_options format: { with: /\A[a-zA-Z]+\z/, message: 'is invalid. Input half-width characters' } do
      validates :municipality
    end
    with_options format: { with: /\A[-a-zA-Z0-9,]+\z/, message: 'is invalid. Enter it as follows (e.g. 1-2-3,Ozeki)' } do
      validates :house_number
    end
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Enter it as follows (e.g. 123-4567)' }
    validates :phone_number, format: { with: /\A[0-9]+\z/, message: 'is invalid. Input only number' }
  end

  with_options format: { with: /\A[a-zA-Z]+\z/, message: 'is invalid. Input half-width characters' } do
    validates :building_name
  end

  validates :phone_number, length: { minimum: 10, message: 'is too short' }
  validates :phone_number, length: { maximum: 11, message: 'is too long' }

  validates :password,
            format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'is invalid. Include both letters and numbers' }

  has_many :rooms
  has_many :messages
end
