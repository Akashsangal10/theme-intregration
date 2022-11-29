class WelcomeMailer < ApplicationMailer

	def contact(user)
		@user = user
    	mail to: @user.email, subject: "Quill Informatics" 
	end
end
