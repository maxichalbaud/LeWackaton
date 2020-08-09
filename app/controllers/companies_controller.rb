class CompaniesController < ApplicationController
  def show
    @company = Company.find(params[:id])
    @courses = Course.where(company_id: params[:id])
  end
end
