require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'Associations' do
    it 'has_many courses' do
      association = described_class.reflect_on_association(:courses).macro
      expect(association).to eq(:has_many)
    end
  end

  context 'Validation' do
    let(:category) { build(:category) }
    it 'not valid if branch is empty' do
      category.branch = nil
      expect(category).not_to be_valid
    end

    it 'not valid if name is empty' do
      category.name = nil
      expect(category).not_to be_valid
    end
  end
end
