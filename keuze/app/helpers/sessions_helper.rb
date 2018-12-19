module SessionsHelper
	# Logs in the given user.
  	def log_in(user)
	    session[:user_id] = user.id
	end

  	# Remembers a user in a persistent session.
  	def remember(user)
    	user.remember
    	cookies.permanent.signed[:user_id] = user.id
    	cookies.permanent[:remember_token] = user.remember_token
  	end

	# Logs out the given user.
	def log_out
	    session.delete(:user_id)
    	@current_user = nil

	end

	# Returns the current logged-in user (if any).
	# Explanation: if session exists: return @current_user
	# or: find user by id and make it @current_user
	# if session does not exists but cookies.signed exist
	# the cookie user id wil be searched and
	# if: user + cookies (remember_token in BCrypt)
	# login user and current user = the cookie.
 	def current_user
    	if (user_id = session[:user_id])
    		@current_user ||= User.find_by(id: user_id)
    	elsif (user_id = cookies.signed[:user_id])
     		user = User.find_by(id: user_id)
      		if user && user.authenticated?(cookies[:remember_token])
        		log_in user
        		@current_user = user
      		end
    	end
	end

	# Returns true if the user is logged in, false otherwise.
	def logged_in?
    	!current_user.nil?
  	end
end