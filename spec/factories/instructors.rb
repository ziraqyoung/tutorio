FactoryBot.define do
  factory :instructor do
    sequence(:email) { |n| "instructor#{n}@email.com" }
    sequence(:full_name) { |n| "Instructor#{n}" }
    sequence(:profile_name) { |n| "Inst#{n}" }
    password { '123456' }
    password_confirmation { '123456' }
  end
end
