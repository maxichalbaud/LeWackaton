class UserCoursesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @enrollement = UserCourse.new
    @course = Course.find(params[:course_id])
    @enrollement.user = current_user
    @enrollement.course = @course
    if @enrollement.save
      redirect_to course_path(@course)
    end
  end

  def update
    @course = Course.find(params[:course_id])
    @user_course = UserCourse.find(params[:id])

    user_course_params

    if !params["user_answers"].nil?
      UserAnswer.generate_course_answers(params["user_answers"], current_user.id, @user_course)
    end

    @user_course.update(user_course_params[:user_course])

    if @user_course.save
      redirect_to @course
    end
  end

  private

  def user_course_params
    params.permit!
  end
end
