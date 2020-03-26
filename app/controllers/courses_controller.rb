class CoursesController < ApplicationController
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
    end
end
