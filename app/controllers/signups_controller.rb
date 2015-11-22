class SignupsController < ApplicationController
  def index
    @signups = Signup.all
  end

  def new
    @signup = Signup.new
  end


#  private
#  def signup_params
#    params.require(:email).permit(:content)
#  end

end
