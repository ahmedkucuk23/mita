class ContactSubmissionMailer < ApplicationMailer
    default from: 'marketing@mita.ba'

    def welcome_email
        @contact = params[:contact]
        mail(to: 'ejub@mita.ba', subject: 'Poruka sa kontakt forme - mita.agency')
    end


end
