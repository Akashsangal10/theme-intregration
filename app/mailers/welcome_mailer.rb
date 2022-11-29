class WelcomeMailer < ApplicationMailer

	def contact_user(user)
		@user = user
		
		p "#{@user.inspect}"
    	mail to: @user.email, subject: "Quill Informatics" 
	end
end
