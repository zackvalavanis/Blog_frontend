class ApplicationController < ActionController::Base
  def current_user
    User.first
  end

  def authenticate_user
    unless current_user
      render json: {}, status: :unauthorized
    end
  end

end
