class CoachesController < ApplicationController
  before_action :set_coach, only: [:show, :edit, :update, :destroy]
  
  def index
    @coaches = Coach.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_coach
    @coach = Coach.find(params[:id])
  end
end
