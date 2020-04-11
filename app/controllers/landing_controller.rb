class LandingController < ApplicationController
  def index
    @branches = Category.distinct.select(:branch)

    if params[:branch].present? && @branches.include?(params[:branch])
      @top_courses = Course.by_branch(params[:branch]).limit(8)
      respond_to do |format|
        format.html { redirect_to root_url(branch: params[:branch])  }
        format.js { render partial: 'landing/landing_courses' }
      end
    else
      @top_courses = Course.limit(8)
      respond_to do |format|
        format.html { render :index }
        format.js { render partial: 'landing/landing_courses' }
      end
    end
  end
end
