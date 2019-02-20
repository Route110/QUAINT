class Record < ApplicationRecord
  belongs_to :user
  belongs_to :hobby

  validates :time, presence: true
  validates :date, presence: true
  validates :comment, length: {in: 0..50}
end