class UserMailer < ApplicationMailer
  default from: "thetoycantina@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
      to: 'foxxdocter@gmail.com',
      subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appname = "Toy Cantina"
    mail(to: user.email,
         subject: "Welcome to #{@appname}!")
  end
end
