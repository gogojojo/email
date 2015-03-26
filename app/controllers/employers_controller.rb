class EmployersController < ApplicationController
  def create
    @employer = Employer.new(params.require(:employer).permit(:email))
    if @employer.save
      flash[:notice] = "An email has been sent to #{@employer.email}"
      UserNotifier.send_signup_email(@employer).deliver
      redirect_to '/' 
    end
  end
end
