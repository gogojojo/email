class EmployersController < ApplicationController
  def create
    @employer = Employer.new(params.require(:employer).permit(:email))
    if @employer.save
      UserNotifier.send_signup_email(@employer).deliver
      redirect_to '/' 
    end
  end
end
