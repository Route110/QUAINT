class Category < ApplicationRecord
  attachment :image

  has_many :hobbies

  validates :category, presence: true
end
