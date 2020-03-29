class Section < ApplicationRecord
  belongs_to :course
  has_many :lessons

  validates :course_id, presence: true
  validates :section_title, presence: true, length: { minimum: 5, maximum: 255 }
end
