class HomeController < ApplicationController

  def index
    @company = Company.new
    end
  def dashboard
  	@current_user 
  	@jobs = Job.all
  	@boats = Boat.all
  end


  end
