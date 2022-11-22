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

	def contact_info
		@inquiry = Inquiry.create(name:params[:name], email:params[:email], message:params[:message])
		if @inquiry
			redirect_to contact_users_path, notice: "We will connect soon"
		
		end
	end

end
