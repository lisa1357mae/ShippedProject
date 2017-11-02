class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_user 

  def current_user
  	@current_user  = Company.find(session[:company_id]) if session[:company_id]  
  end
end
