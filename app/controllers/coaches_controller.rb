class CoachesController < ApplicationController
  before_action :set_coach, only: [:show, :edit, :update, :destroy]
  
  def index
    @coaches = Coach.all
  end

  def show
  end

  def new
    @new_coach = Coach.new
  end

  def create
    newly_created_coach = Coach.create( coach_params )
    if newly_created_coach.valid?
      redirect_to coach_path( newly_created_coach )
    else
      flash[ :messages ] = newly_created_coach.errors.full_messages
      redirect_to new_coach_path
    end
  end

  def edit
  end

  def update
    if @coach.update( coach_params )
      redirect_to coach_path( @coach )
    else
      flash[ :messages ] = @coach.errors.full_messages
      redirect_to edit_coach_path
    end
  end

  def destroy
  end

  private

  def set_coach
    @coach = Coach.find(params[:id])
  end

  def coach_params
    params.require( :coach ).permit( :name, :password, :password_confirmation, :avatar, :bio )
  end

end
