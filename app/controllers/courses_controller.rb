class CoursesController < ApplicationController
  before_action :set_course

  def show
    @enrollement = UserCourse.new
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end
end
