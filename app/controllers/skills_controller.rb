class SkillsController < ApplicationController

  def index
  end

  def show
    @skill = Skill.find(params[:id])
    render json: @skill
  end
end
