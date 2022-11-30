class UsersController < ApplicationController
	
	def index
	end


	def services
	end

	def about
	end

	def work

	end

	def contact_us

	end

	def services

	end

	def contact_info
		@inquiry = Inquiry.create(name:params[:name], email:params[:email], message:params[:message])
		if @inquiry
			 # WelcomeMailer.contact_user(@inquiry).deliver_now	
			flash.alert = "Your query successfuly submitted"
			redirect_to contact_path
		else
			flash[:error] = "Something went wrong"
		end
	end

end
