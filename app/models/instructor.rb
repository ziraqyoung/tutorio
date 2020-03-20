class Instructor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :full_name, presence: true, length: { minimum: 4 }
  validates :password, presence: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true, length: { minimum: 5 }
end
