class LandingController < ApplicationController
  def index
    @top_courses = Course.limit(8)
  end
end
