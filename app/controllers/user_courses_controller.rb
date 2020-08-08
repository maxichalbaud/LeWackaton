class UserCoursesController < ApplicationController
  def create
    @enrollement = UserCourse.new
    @enrollement.user = current_user
    @enrollement.course = Course.find(params[:course_id])
    if @enrollement.save!
      redirect_to root_path
    end
  end
end
