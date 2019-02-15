class Community < ApplicationRecord
  has_many :board_comments
  has_many :users_communities
  has_many :users, through: :users_communities
  belongs_to :hobby
end