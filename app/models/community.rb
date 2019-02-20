class Community < ApplicationRecord
  has_many :board_comments
  has_many :users_communities
  has_many :users, through: :users_communities
  belongs_to :hobby

  validates :name, presence: true
  validates :level, presence: true
  validates :introduction, length: {in: 2..20}, presence: true
end