class Category < ApplicationRecord

  attachment :image
  
  has_many :hobbies
end
