class Hobby < ApplicationRecord

  attachment :image

  has_many :users_hobbies, dependent: :destroy
  has_many :users, through: :users_hobbies
  has_many :records
  has_many :communities
  belongs_to :category
  has_one :narrow
  has_one :first_step

  accepts_nested_attributes_for :narrow
  accepts_nested_attributes_for :first_step
end
