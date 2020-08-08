class UsersController < ApplicationController
  before_action :set_user, only: [:index, :show]
  def index
    @courses = Course.where(user_id: @user)
  end

  def show
  end

  private

  def set_user
    @user = current_user
  end
end
