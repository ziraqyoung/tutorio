class Category < ApplicationRecord
  has_many :courses

  validates :branch, presence: true
  validates :name, presence: true
end
