class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(name: params[:name])
		if user and user.authentificate(params[:password])
			session[:user_id] = user.id
			redirect_to admin_url
		else
			redirect_to login_url, alert "Wrong name and/or password"
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to store_url, notice: "Session of user ended!"
	end
end
