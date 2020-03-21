require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:category) { build(:category) }

  context 'Validation' do
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
