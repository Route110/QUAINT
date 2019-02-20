class Rating < ApplicationRecord
  has_many :hobbies_ratings
  has_many :hobbies, through: :hobbies_ratings

  validates :name, presence: true
end
