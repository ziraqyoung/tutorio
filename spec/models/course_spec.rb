require 'rails_helper'

RSpec.describe Course, type: :model do
  context 'Associations' do
    it 'belongs to user' do
      association = described_class.reflect_on_association(:instructor).macro
      expect(association).to eq(:belongs_to)
    end

    it 'belongs to category' do
      association = described_class.reflect_on_association(:category).macro
      expect(association).to eq(:belongs_to)
    end

    it 'has many sections' do
      association = described_class.reflect_on_association(:sections).macro
      expect(association).to eq :has_many
    end
  end

  context 'Validations' do
    let(:course) { build(:course) }

    it 'is creates successfully' do
      expect(course).to be_valid
    end

    it 'is not valid without category' do
      course.category = nil
      expect(course).not_to be_valid
    end

    it 'is not valid without instructor' do
      course.instructor = nil
      expect(course).not_to be_valid
    end

    it 'is not valid without title' do
      course.title = nil
      expect(course).not_to be_valid
    end

    it 'is not valid  with a title, shorter than 5 characters' do
      course.title = 'a' * 4
      expect(course).not_to be_valid
    end

    it 'is not valid  with title, longer than 255 characters' do
      course.title = 'a' * 256
      expect(course).not_to be_valid
    end

    it 'is not valid without description' do
      course.description = nil
      expect(course).not_to be_valid
    end

    it 'is not valid  with a description, shorter than 20 characters' do
      course.description = 'a' * 10
      expect(course).not_to be_valid
    end

    it 'is not valid  with a description, longer than 1000 characters' do
      course.description = 'a' * 1050
      expect(course).not_to be_valid
    end
  end

  context 'Scopes' do
    it 'default_scope orders by descending created_at' do
      first_course = create(:course)
      second_course = create(:course)
      expect(Course.all).to eq([second_course, first_course])
    end

    it 'by_branch scope gets courses by a particular branch' do
      category = create(:category)
      create(:course, category_id: category.id)
      create_list(:course, 10)
      courses = Course.by_branch(category.branch)
      expect(courses.count).to eq 1
      expect(courses[0].category.branch).to eq category.branch
    end
  end
end
