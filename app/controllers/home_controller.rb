class HomeController < ApplicationController

  def index
    @company = Company.new
    end
  def dashboard
  	@jobs = Job.all
  	@boats = Boat.all
  end


  end
