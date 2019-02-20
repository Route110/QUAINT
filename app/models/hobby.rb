class Hobby < ApplicationRecord

  attachment :image

  has_many :users_hobbies, dependent: :destroy
  has_many :users, through: :users_hobbies
  has_many :records
  has_many :communities
  belongs_to :category
  has_many :hobbies_ratings
  has_many :ratings, through: :hobbies_ratings
  has_one :first_step

end
