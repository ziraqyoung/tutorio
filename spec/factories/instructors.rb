FactoryBot.define do
  factory :instructor do
    email { 'instructor1@email.com' }
    full_name { 'Instructor1' }
    profile_name { 'Ins1' }
    password { '123456' }
    password_confirmation { '123456' }
  end
end
