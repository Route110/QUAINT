class FirstStep < ApplicationRecord
  belongs_to :hobby

  validates :item, presence: true
  validates :cost, presence: true
  validates :introduction, presence: true
end