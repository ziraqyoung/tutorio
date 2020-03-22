FactoryBot.define do
  factory :course do
    title { 'a' * 10 }
    description { 'a' * 20 }
    category
    instructor
    duration { 4.16 }
    price { "9.99" }
    level { "beginner" }
  end
end
