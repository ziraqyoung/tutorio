class Category < ApplicationRecord
  validates :branch, presence: true
  validates :name, presence: true
end
