require 'rails_helper'

RSpec.describe Instructor, type: :model do
  let(:instructor) { build(:instructor) }

  context 'Validations' do
    it 'is valid' do
      expect(instructor).to be_valid
    end

    it 'is not valid if #full_name is absent' do
      instructor.full_name = nil
      expect(instructor).not_to be_valid
    end

    it 'is not valid without #profile_name' do
      instructor.profile_name = nil
      expect(instructor).to be_valid
    end

    it "is not valid with a too short full_name" do
      instructor.full_name = 'is'
      expect(instructor).not_to be_valid
    end

    it "is not valid without an email" do
      instructor.email = nil
      expect(instructor).not_to be_valid
    end

    it 'is not valid with an invalid email format' do
      instructor.email = 'testtest.com'
      expect(instructor).not_to be_valid
    end

    it 'is not valid without a password' do
      instructor.password = nil
      expect(instructor).not_to be_valid
    end

    it 'is not valid without password_confirmation' do
      instructor.password_confirmation = nil
      expect(instructor).not_to be_valid
    end

    it 'is not valid with unmatching password_confirmation' do
      instructor.password_confirmation = '12345678'
      expect(instructor).not_to be_valid
    end
  end
end
