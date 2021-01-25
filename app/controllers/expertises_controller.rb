class ExpertisesController < ApplicationController

  def create
    new_expertise = Expertise.create(coach_id: params[:coach_id], category_id: expertise_params[:category_id])
    redirect_to coach_path(new_expertise.coach)
  end

  def destroy
    expertise = Expertise.find(params[:id])
    expertise.destroy
    redirect_to coach_path(expertise.coach)
  end


  private
  def expertise_params
    params.require(:expertise).permit(:category_id)
  end
end
