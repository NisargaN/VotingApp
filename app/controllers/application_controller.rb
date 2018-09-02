class ApplicationController < ActionController::Base
	before_action :authenticate_user!

	# include Recaptcha::Verify
	# protect_from_forgery with: :null_session
	# def current_user
	#   @current_user ||= User.find_by(id: cookies[:user_id]) if cookies[:user_id]
	# end

	# helper_method :current_user
end
