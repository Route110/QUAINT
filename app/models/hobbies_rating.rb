class HobbiesRating < ApplicationRecord
  belongs_to :hobby
  belongs_to :rating

  validates :point, presence: true
end
