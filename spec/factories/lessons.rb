FactoryBot.define do
  factory :lesson do
    association :section, strategy: :create
    lesson_title { "Lesson 1" }
  end
end
