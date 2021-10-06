class UsersController < ApplicationController
  before_action :logged_in_user, only: :show

  def show 
    @user = User.find(params[:id])
    render status: :ok, json: @user
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      log_in @user
      Rails.logger.debug "User created!"
    end
  end
end
