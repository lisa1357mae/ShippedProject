class HomeController < ApplicationController

  def index
    @company = Company.new
    end
  def dashboard
  	@jobs = Job.all
  	@boats = Boat.all
  end
def logout
	 
	session[:company_id] = nil
	flash[:message] = "You are logged out !"
	redirect_to :root
end

  end
