class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attachment :image

  validates :name, presence: true
  validates :postalcode, presence: true, length: { is: 7 }, numericality: true
  validates :address, presence: true
  validates :email, presence: true
  validates :introduction, length: { maximum: 200 }
end
