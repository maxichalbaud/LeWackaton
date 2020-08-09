class CoursesController < ApplicationController
  before_action :set_course, only: [:show]

  def index
    @courses = Course.order(created_at: :desc)
    if params[:category].present?
      sql_query = "category = :category"
      @courses = Course.where(sql_query, category: Course.categories[params[:category]])
    elsif params[:company].present?
      @courses = Course.where(company: Company.find(params[:company]))
    end
  end

  def show
    @questions = @course.questions
    @user_course = current_user.user_courses.where(course: @course).first_or_initialize
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end
end
