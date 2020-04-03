require 'rails_helper'

RSpec.describe CategoriesHelper, type: :helper do
  context '#categories_format_partial_path' do
    it "returns homepage_categories partial's path" do
      allow(helper).to receive(:current_page?).and_return(true)
      expect(helper.categories_format_partial_path).to eq 'categories/category/homepage_categories'
    end

    it "return branch_categories partial's path" do
      allow(helper).to receive(:current_page?).and_return(false)
      expect(helper.categories_format_partial_path).to eq 'categories/category/branch_categories'
    end
  end
end
