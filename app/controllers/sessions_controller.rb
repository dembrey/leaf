class SessionsController < ApplicationController

  def create
    # for sessions controller - could check to see if a user validates and then an employer, so they'd perhaps use the same param to do that, then spit back out the right object
      # this would save aubrey some work
    # can potentially explore services folder to strip out some junk from controller if it gets too hairy
    if params[:username]
      @user = User.find_by(username: params[:username])&.authenticate(params[:password])
      if @user
        render json: @user
      else
        render json: ["Incorrect credentials"], status: 401
      end
    elsif params[:company_name]
      @employer = Employer.find_by(company_name: params[:company_name])&.authenticate(params[:password])
      if @employer
        render json: @employer
      else
        render json: ["Incorrect credentials"], status: 401
      end
    else
      render json: ["Please log in"]
    end
  end

end
