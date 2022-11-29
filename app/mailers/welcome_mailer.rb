class WelcomeMailer < ApplicationMailer

	def contact_user(user)
		@user = user
		p "================"
		p "#{@user.inspect}"
    	mail to: @user, subject: "Quill Informatics" 
	end
end
