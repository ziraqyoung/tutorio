class Lesson < ApplicationRecord
  belongs_to :section
  validates :lesson_title, presence: true, length: {minimum: 5, maximum: 255 }
  validates :section_id, presence: true
end
