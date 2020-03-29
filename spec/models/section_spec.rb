require 'rails_helper'

RSpec.describe Section, type: :model do
  context 'Associations' do
    it "belongs to course" do
      association = described_class.reflect_on_association(:course).macro
      expect(association).to eq :belongs_to
    end

    it 'has_many sections' do
      association = described_class.reflect_on_association(:lessons).macro
      expect(association).to eq :has_many
    end
  end

  context "Validations" do
    let(:section) { build(:section) }

    it 'creates successfully' do
      expect(section).to be_valid
    end

    it "not valid without section_title" do
      section.section_title = nil
      expect(section).not_to be_valid
    end

    it "not valid with section_title less than 5 characters" do
      section.section_title = 'a' * 4
      expect(section).not_to be_valid
    end

    it "not valid with section_title greater than 255 characters" do
      section.section_title = 'a' * 256
      expect(section).not_to be_valid
    end

    it "not valid without course_id" do
      section.course_id = nil
      expect(section).not_to be_valid
    end
  end
end
