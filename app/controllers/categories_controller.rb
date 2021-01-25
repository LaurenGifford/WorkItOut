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
  end

  def destroy
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

end
