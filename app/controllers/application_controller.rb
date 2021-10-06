class ApplicationController < ActionController::Base
  include SessionsHelper

  private 
    def logged_in_user
      unless logged_in?
        Rails.logger.debug "Not logged in."
      end
    end
end
