class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def index
    @categories = Category.all
  end

  def create
  end

  def edit
  end

  def update
    if @category.update( category_params )
      redirect_to category_path( @category )
    else
      flash[ :messages ] = @category.errors.full_messages
      redirect_to edit_category_path
    end
  end

  def destroy
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require( :category ).permit( :name, :mobility )
  end

end
