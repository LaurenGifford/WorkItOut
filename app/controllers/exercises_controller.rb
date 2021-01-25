class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  def show
  end

  def index
    @exercises = Exercise.all
  end

  def new
    @new_exercise = Exercise.new
    @new_exercise.build_category 
  end

  def create
    if exercise_params[ :category_id ].empty?
      newly_created_category = Category.create( exercise_params[ :category_attributes ] )
      flash[ :messages ] = newly_created_category.errors.full_messages unless newly_created_category.valid?
      newly_created_exercise = Exercise.create( category_id: newly_created_category.id, name: exercise_params[ :name ], difficulty: exercise_params[ :difficulty ], muscle_group: exercise_params[ :muscle_group ], url: exercise_params[ :url ], instructions: exercise_params[ :instructions ] )
    else
      newly_created_exercise = Exercise.create( category_id: exercise_params[ :category_id ], name: exercise_params[ :name ], difficulty: exercise_params[ :difficulty ], muscle_group: exercise_params[ :muscle_group ], url: exercise_params[ :url ], instructions: exercise_params[ :instructions ] )
    end
    if newly_created_exercise.valid?
      redirect_to exercise_path( newly_created_exercise )
    else
      flash[ :messages ] += newly_created_exercise.errors.full_messages
      redirect_to new_exercise_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  def exercise_params
    params.require( :exercise ).permit( :category_id, :name, :difficulty, :muscle_group, :url, :instructions, category_attributes: [ :name, :mobility ] )
  end

end
