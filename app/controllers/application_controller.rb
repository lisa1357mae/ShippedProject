class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  skip_before_action :verify_authenticity_token, if: :json_request?

 protected

 def json_request?
   request.format.json?
 end


  before_action :current_user 

  def current_user
  	@current_user = Company.find(session[:company_id]) if session[:company_id]  
  end
end
