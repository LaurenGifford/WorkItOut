class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :destroy]
  
  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end
end
