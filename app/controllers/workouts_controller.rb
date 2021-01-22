class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def index
    @workouts = Workout.all
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

  def set_workout
    @workout = Workout.find(params[:id])
  end
end
