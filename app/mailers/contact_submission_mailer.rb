class ContactSubmissionMailer < ApplicationMailer
    default from: 'adnan@mita.ba'

    def welcome_email
        @contact = params[:contact]
        mail(to: 'Adnan.biber2@gmail.com', subject: 'Kontakt forma mita.agency')
    end


end
