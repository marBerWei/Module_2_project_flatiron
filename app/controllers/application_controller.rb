class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # helper_method :current_user

  # def current_user 
  # 	user = ""
  # 	if session[:instructor_id] 
  # 		user 
  # 		session[:student_id]
  # end
end
