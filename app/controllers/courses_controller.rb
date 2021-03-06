class CoursesController < ApplicationController
  def show
    @course = Course.find(params[:id])
  end

  def development
    courses_for_branch(params[:action])
  end

  def design
    courses_for_branch(params[:action])
  end

  def photography
    courses_for_branch(params[:action])
  end

  def marketing
    courses_for_branch(params[:action])
  end

  def business
    courses_for_branch(params[:action])
  end

  private
    def courses_for_branch(branch)
      @courses = Course.by_branch(branch)
      @branches = Category.distinct.select(:branch)
    end
end
