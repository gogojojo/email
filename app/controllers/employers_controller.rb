class EmployersController < ApplicationController
  def create
    @employer = Employer.new(params.require(:employer).permit(:email))
    if @employer.save
      redirect_to '/' 
    end
  end
end
