class ApplicationController < ActionController::Base
  
  protect_from_forgery with: :exception
  before_action :force_json_request
  


  def force_json_request
    request.format = :json
  end
end
