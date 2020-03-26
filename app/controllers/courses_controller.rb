class CoursesController < ApplicationController
  def development
    @courses = Course.by_branch('Development')
  end

  def design
  end

  def photography
  end

  def marketing
  end

  def business
  end
end
