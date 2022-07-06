class ApplicationController < ActionController::API
 protect_from_forgery with: :exception
 helper_method :current_user
 protected
 def current_user
    @current_user ||= User.field(session[:user_id]) if session[:user_id]
 end
end
