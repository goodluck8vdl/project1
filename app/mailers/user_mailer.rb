class UserMailer < ApplicationMailer
   default from: "from@example.com"

  def contact_form(email, name, message)
     @message = message
     mail(:from => email,
        :to => 'goodluck8vdl@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
  
  def welcome(user)
    @appname = "Bike Shop"
    mail( :to => user.email,
      :subject => "Welcome to #{@appname}!")
  end
  def paid_order(user, product)
	  @user = user
		@product = product
	  @appname = "Bike Shop"
	  mail( :to => user.email,
	     :subject => "Your order on #{@appname}!")
	end
end
