class ApplicationController < ActionController::API
  
  def current_user
    @current_user || User.find_by(params[:token]) if params[:token]
  end

  def current_employer
    @current_employer || Employer.find_by(params[:token]) if params[:token]
  end

  def require_user
    unless current_user
      render json: ["You need to be logged in to do this."], status: 401
    end
  end

  def require_employer
    unless current_employer
      render json: ["You need to be logged in to do this."], status: 401
    end
  end
end
