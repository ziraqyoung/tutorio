class LandingController < ApplicationController
  def index
    @top_courses = Course.limit(8)
    @branches = Category.distinct.select(:branch)
  end
end
