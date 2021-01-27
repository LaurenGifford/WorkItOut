class ExpertisesController < ApplicationController

  def create
    if expertise_params[ :category_id ].empty?
      new_category = Category.create( expertise_params[ :category ] )
      flash[:messages] = new_category.errors.full_messages unless new_category.valid?
      new_expertise = Expertise.create( coach_id: current_user.id, category_id: new_category.id)
    else 
      new_expertise = Expertise.create( coach_id: current_user.id, category_id: expertise_params[ :category_id ] )
    end
    flash[:messages] += new_expertise.errors.full_messages unless new_expertise.valid?
    redirect_to coach_path( new_expertise.coach )
  end

  def destroy
    expertise = Expertise.find(params[:id])
    expertise.destroy
    redirect_to coach_path(expertise.coach)
  end

  private

  def expertise_params
    params.require( :expertise ).permit( :category_id, coach_id: current_user.id, category: [ :name, :mobility ] )
  end

end
