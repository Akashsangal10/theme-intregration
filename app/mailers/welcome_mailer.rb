class WelcomeMailer < ApplicationMailer

	def contact_user(user)
		@user = user
    	mail to: @user.email, subject: "Quill Informatics" 
	end
end
