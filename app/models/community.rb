class Community < ApplicationRecord
  has_many :board_commnets
  has_many :users, through: :users_communities
  has_many :users_communities
  belongs_to :hobby
end