class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attachment :image

  validates :name, presence: true
  validates :age, presence: true
  validates :sex, presence: true
  validates :job, presence: true
  validates :address, presence: true
  validates :email, presence: true
  validates :introduction, length: { maximum: 200 }
end
