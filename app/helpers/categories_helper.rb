module CategoriesHelper
  def categories_format_partial_path
    current_page?(root_path) ? 'categories/category/homepage_categories' : 'categories/category/branch_categories'
  end
end
