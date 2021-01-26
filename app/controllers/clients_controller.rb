class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def new
    @new_client = Client.new
  end

  def create
    newly_created_client = Client.create( client_params )
    if newly_created_client.valid?
      flash[ :messages ] = [ "Account for client #{ newly_created_client.name } created! Please log in!" ]
      redirect_to client_login_path
    else
      flash[ :messages ] = newly_created_client.errors.full_messages
      redirect_to new_client_path
    end
  end

  def edit
  end

  def update
    if @client.update( client_params )
      redirect_to client_path( @client )
    else
      flash[ :messages ] = @client.errors.full_messages
      redirect_to edit_client_path
    end
  end

  def destroy
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require( :client ).permit( :coach_id, :name, :password, :password_confirmation, :birthday, :avatar, :bio )
  end

end
