class ContactMailer < ApplicationMailer
  default from: 'ahmed.kucuk200@gmail.com'

  def contact_mailer_email
    @user = params[:user]
    @message = params[:message]

    mail(to: @user.email, subject: "Your Contact Form is sent.")
  end
end
