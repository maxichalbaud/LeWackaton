class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @categories = Course.all.categories.keys
    @companies = Company.all
  end
end
