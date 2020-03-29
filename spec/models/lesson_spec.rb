require 'rails_helper'

RSpec.describe Lesson, type: :model do
  context 'Associations' do
    it "belongs to section" do
      association = described_class.reflect_on_association(:section).macro
      expect(association).to eq :belongs_to
    end
  end

  context "Validations" do
    let(:lesson) { build(:lesson) }

    it 'creates successfully' do
      expect(lesson).to be_valid
    end

    it "not valid without lesson_title" do
      lesson.lesson_title = nil
      expect(lesson).not_to be_valid
    end

    it "not valid without section_id" do
      lesson.section_id = nil
      expect(lesson).not_to be_valid
    end

    it "not valid with lesson_title less than 5 characters" do
      lesson.lesson_title = 'a' * 4
      expect(lesson).not_to be_valid
    end

     it "not valid with lesson_title greater than 255 characters" do
      lesson.lesson_title = 'a' * 256
      expect(lesson).not_to be_valid
    end
  end
end
