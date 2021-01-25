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
    @workout.workout_exercises.each(&:destroy)
    @workout.destroy
    redirect_to client_path(@workout.client)
  end

  
  private

  def set_workout
    @workout = Workout.find(params[:id])
  end
end
