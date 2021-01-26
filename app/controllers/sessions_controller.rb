class SessionsController < ApplicationController
  
  def client_login
  end

  def login_client
    @client = Client.find_by( name: params[ :name ] )
    if @client && @client.authenticate( params[ :password ] )
      session[ :id ], session[ :coach? ] = @client.id, false
      redirect_to client_path( @client )
    else
      flash[ :messages ] = [ "Invalid username or password!" ]
      redirect_to client_login_path
    end
  end

  def coach_login
  end

  def login_coach
    @coach = Coach.find_by( name: params[ :name ] )
    if @coach && @coach.authenticate( params[ :password ] )
      session[ :id ], session[ :coach? ] = @coach.id, true
      redirect_to coach_path( @coach )
    else
      flash[ :messages ] = [ "Invalid username or password!" ]
      redirect_to coach_login_path
    end
  end

  def logout
    session[ :id ], session[ :coach? ] = nil, nil
    redirect_to home_path
  end

end
