class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    # here is where you'd have to push in skills
    # or redefine the setter - probs not in this case since it's a bunch of checkboxes

    # render json: @user
    @user.save!
    if @user.save!
      # client side validations is an option too!
      params[:user][:skills].each do |skill|
        skill = Skill.find_by(name: skill['name'])
        Rails.logger.info skill.inspect
        @user.skills << skill
      end
      render json: @user
    else
      render json: @user.errors.full_messages, status: 400
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :phone, :bio, :password, :location, :username)
  end
end
