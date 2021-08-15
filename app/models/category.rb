class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'Logo' },
    { id: 3, name: 'Banner' }
  ]

  include ActiveHash::Associations
  has_many :designs
end