FactoryBot.define do
  factory :section do
    section_title { 'First section' }
    association :course, strategy: :create
  end
end
