FactoryBot.define do
  factory :category do
    sequence(:branch) { |n| "branch#{n}" }
    sequence(:name) { |n| "name#{n}" }
  end
end
