# session[ :id ] = a particular client or coach's DB id
# session[ :coach? ] = true if the user is a coach and false if the user is a client

class ApplicationController < ActionController::Base

    helper_method :current_user, :logged_in?, :logged_in_as_client?, :logged_in_as_coach?

    def current_user
        @current_user ||= session[ :coach? ] ? Coach.find_by( id: session[ :id ] ) : Client.find_by( id: session[ :id ] )
    end

    def logged_in?
        !current_user.nil?
    end

    def logged_in_as_client?
        !session[ :coach? ]
    end

    def logged_in_as_coach?
        session[ :coach? ]
    end

    def authorize
        # redirect somewhere (login page or a 401 page) unless logged_in?
    end

end
