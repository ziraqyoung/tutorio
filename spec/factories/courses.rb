FactoryBot.define do
  factory :course do
    title { "Introduction to Ruby on Rails" }
    description { "This course Etiam vel tortor sodales tellus ultricies commodo" }
    category
    instructor
    duration { 4.16 }
    price { "9.99" }
    level { "beginner" }
  end
end
