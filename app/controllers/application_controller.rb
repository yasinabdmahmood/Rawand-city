class ApplicationController < ActionController::API
    
    before_action :authenticate_user!
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
  
    def authenticate_user!
      render json: { error: 'Unauthorized' }, status: :unauthorized unless current_user
    end
end