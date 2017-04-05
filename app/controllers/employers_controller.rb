class EmployersController < ApplicationController

  def create
    @employer = Employer.new(employer_params)
    if @employer.save!
      render json: @employer
    else
      render json: @employer.errors.full_messages, status: 400
    end
  end

  def show
    @employer = Employer.find(params[:id])
    render json: @employer
  end

  def update
  end

  private

  def employer_params
    params.require(:employer).permit(:company_name, :website_url, :contact_name, :contact_phone, :contact_email, :about, :photo, :password, :location)
  end
end
