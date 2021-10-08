class ApplicationController < ActionController::API
  include SessionsHelper
  include JWTSessions::RailsAuthorization

  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized

  private 
    def current_user 
      @current_user ||= User.find(payload['user_id'])
    end
    
    def not_authorized
      render json: { error: 'Not Authorized' }, status: :unauthorized
    end


    def logged_in_user
      unless logged_in?
        Rails.logger.debug "Not logged in."
      end
    end
end
