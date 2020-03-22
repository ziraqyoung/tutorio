class Course < ApplicationRecord
  belongs_to :category
  belongs_to :instructor

  validates :title, presence: true, length: { minimum: 5, maximum: 255 }
  validates :description, presence: true, length: { minimum: 20, maximum: 1000 }

  default_scope { includes(:instructor).order(created_at: :desc) }
  scope :by_branch, ->(branch) do
    joins(:category).where(categories: { branch: branch })
  end
end
