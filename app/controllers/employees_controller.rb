class EmployeesController < ApplicationController

  def index
    @employees = Company.find(params[:company_id]).employees
  end

end
