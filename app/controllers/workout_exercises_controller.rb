class WorkoutExercisesController < ApplicationController


  def create
    new_workout_exercise = WorkoutExercise.create(workout_id: params[:workout_id], exercise_id: workout_exercise_params[:exercise_id])
    redirect_to workout_path(new_workout_exercise.workout)
  end

  def destroy
    workout_exercise = WorkoutExercise.find(params[:id])
    workout_exercise.destroy
    redirect_to workout_path(workout_exercise.workout)
  end

  private

  def workout_exercise_params
    params.require(:workout_exercise).permit(:exercise_id)
  end
end
