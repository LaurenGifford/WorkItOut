class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :completed, :destroy]
  
  def show
  end

  def index
    @workouts = Workout.all
  end

  def new
    unless logged_in_as_coach?
      flash[ :messages ] = [ "You must be logged in as a coach to create a new workout!" ]
      redirect_to client_path( session[ :id ] )
    end
    @new_workout = Workout.new
  end

  def create
    new_workout = Workout.create( workout_params )
    if new_workout.valid?
      redirect_to workout_path( new_workout )
    else
      flash[ :messages ] = new_workout.errors.full_messages
      redirect_to new_workout_path
    end
  end

  def edit
  end

  def update
  end

  def completed
    @workout.update( completed: @workout.completed ? false : true )
    redirect_to workout_path( @workout )
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

  def workout_params
    params.require( :workout ).permit( :client_id, :name, :length )
  end

end
